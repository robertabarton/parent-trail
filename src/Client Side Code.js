$.widget('rabarton.parentTrail', {

    options: {
        id: '',
        itemName: '',
        ajaxIdentifier: '',
        cascadingItems: '',
        pageItemsToSubmit: '',
        separator: ' » ',
        display_null: 'N',
        null_text: '',
        null_value: '',
        showSearchButton: 'Y',
        invalidValue: 'Invalid value',
        title: '',
        noDataFound: '',
        previousLabel: 'Previous',
        nextLabel: 'Next',

        initial_value: '',
        initial_ids: '',
        initial_crumbs: ''
    },

    modalWidth:         500,
    modalHeight:        500,
    modalRows:          100,
    
    current_value:      '',
    current_ids:        '',
    current_crumbs:     '',

    item$: null,
    itemDisplay$:       null,
    searchButton$:      null,
    
    dialog$:            null,
    dialogFilterText$:  null,
    dialogRows$:        null,
    
    activeSearchTerm:   '',

// -------- _create ----------------------------------------------------------------
// -------- jquery widget creation -------------------------------------------------
   
    _create: function () {    // pseudo public
        var self = this

        apex.debug.log('PTRAIL', '_Create', self.options.itemName, self.options)

        self.item$           = $('#' + self.options.itemName)      
        self.itemDisplay$    = $('#' + self.options.itemName + '_DISPLAY')
        
    // put inverted commas back in escaped separator
    
        self.options.separator = self.options.separator.replace(/&quot;/g, '"')
        
    // set up item in apex
    
        self._SetupApexAPI()
        
    // set up current based on initial
    
        self.FieldSetValue(self.options.initial_value, self.options.initial_ids, self.options.initial_crumbs, true)

    // set up search and accompanying dialog
        
        if (self.options.showSearchButton == 'Y' && !self.item$.prop('disabled')) {
            
            self.searchButton$   = $('#' + self.options.itemName + '_BUTTON')
        
            self.searchButton$.on('click', function (e) {
                if (!self.dialog$) {
                    self._DialogCreate()
                }
                else {
                    self.activeSearchTerm = ''
                    self.dialogFilterText$.val('')
                    self.dialogRows$.html('<br>')
                }

                var l_width = $('body').width()
                $('body').width(l_width).addClass('apex-no-scroll')         // block main page scrolling, take care with sequence
                
                self.dialog$.dialog({
                    title: self.options.title,
                    modal: true,
                    height: self.modalHeight,
                    width: self.modalWidth,
                    dialogClass: 'ui-dialog--apex',
                    close: function() {
                        self.dialogRows$.html('<br>')
                        $('body').removeClass('apex-no-scroll').width('')    // remove block on main page scrolling
                    }
                })
                self._DialogSearchRecords(1)
            })
        }
        
    // set up event handlers for clicking on links and changes to cascaded items
        
        self.itemDisplay$.on('click', 'a', function(e) {

            var i  = this.dataset.i
            if (i == -1 || (i == 0 && self.current_value == '')) 
                return;
            
            if (i == 0)
                self.FieldSetValue(null, null, null);
            else
                self.FieldSetValue(self.current_ids.split(':')[i - 1], self.current_ids.split(':').slice(0, i).join(':'), self.current_crumbs.split(':').slice(0, i).join(':'));
        })
        
        $(self.options.cascadingItems).on('change', function () {            
            self.FieldSetValue(null, null, null)
        })
    },
    
// -------- FieldSetValue ------------------------------------------------------------
// -------- Something changed and we need to fetch data and then update display -------------------------------------------

    FieldSetValue: function (p_new_value, p_new_ids, p_new_crumbs, p_suppress_change = false) {   // public
        var self = this
        
        apex.debug.log('PTRAIL', 'FieldSetValue', 'id:' + self.options.itemName, 'new_value:' + p_new_value, 'new_ids=' + p_new_ids, 'new_crumbs=' + p_new_crumbs)
        
        self.current_value  = p_new_value  ? p_new_value                          : ''
        self.current_ids    = p_new_ids    ? p_new_ids.replace(/^:+|:+$/g, "")    : ''     // trim leading and trailing colons
        self.current_crumbs = p_new_crumbs ? p_new_crumbs.replace(/^:+|:+$/g, "") : ''
        
        if (!self.current_value || (self.current_ids && self.current_crumbs)) {
            self._FieldUpdateDisplay(!p_suppress_change)
        }
        else {
            apex.server.plugin(
                self.options.ajaxIdentifier, 
                {
                    x01: 'GET_RECORD',
                    x02: self.current_value,
                    pageItems: [self.options.pageItemsToSubmit, self.options.cascadingItems].filter(function (selector) {return (selector)}).join(',')
                }, 
                {
                    dataType: 'json',
                    success: function (pData) {                    
                        self.current_ids    = pData.r_ids
                        self.current_crumbs = pData.r_crumbs
                        self._FieldUpdateDisplay(!p_suppress_change)
                        
                        apex.debug.log('PTRAIL', 'GET_RECORD succeeded', 'value:' + self.current_value, 'ids=' + self.current_ids, 'crumbs=' + self.current_crumbs)
                    },
                    error: function (p_XHR, p_text, p_error) {
                        apex.debug.log('PTRAIL', 'GET_RECORD failed for reason:', p_XHR, p_text, p_error)
                        apex.message.alert('Access to a single record failed for following reason: ' + p_error)
                    }
                }
            )
        }
    },

// -------- _FieldCalcDisplayHTML ------------------------------------------------------------
// -------- Work out html for a certain value------------------------------------------------------------

    _FieldCalcDisplayHTML: function () {       // private
        var self = this
        
        if (self.current_crumbs == 'FLAG_INVALID') {
            
            apex.message.showErrors(
                {
                    type:       "error",
                    location:   "inline",
                    pageItem:   self.options.itemName,
                    message:    self.options.invalidValue,
                    unsafe:     false
                }
            ); 
            
            return '' + self.current_value
        }
        
        apex.message.clearErrors(self.options.itemName);
          
        var display_html = ''
        if (self.item$.prop('disabled')) {
            if (self.options.display_null == 'Y') {
                display_html += self.options.null_text
            }
            if (self.current_crumbs) {
                if (display_html.length > 0) {
                    display_html += self.options.separator
                }
                display_html += self.current_crumbs.replace(/:/g, self.options.separator)
            }
            return display_html        
        }
    
        if (self.options.display_null == 'Y') {
            display_html += '<a data-i="0" href="javascript:null;">' + self.options.null_text + '</a>'
        }

        if (!self.current_value || self.current_value.length === 0) {
            if (display_html)
                return display_html;
            
            var l_placeholder = self.item$.attr('placeholder')
            return l_placeholder === undefined ? '' : l_placeholder
        }
        
        var crumbs = self.current_crumbs.split(':')
        var ids    = self.current_ids.split(':')

        for (var i = 0; i < crumbs.length; i++) {
            if (display_html.length > 0) {
                display_html += self.options.separator
            }
            display_html += '<a data-i="' + (i == crumbs.length -1 ? -1 : i + 1) + '" href="javascript:null;">' + crumbs[i] + '</a>'
        }

        return display_html
    },
    
// -------- _FieldUpdateDisplay ------------------------------------------------------------
// -------- update displayed data and trigger change if needed -------------------------------------------

    _FieldUpdateDisplay: function (p_trigger_change = false) {  // private
        var self = this
        
        self.itemDisplay$.html(self._FieldCalcDisplayHTML())
        
        if (p_trigger_change)
            self.item$.trigger('change');
    },
    
// -------- _SetupApexAPI ------------------------------------------------------------
// -------- Get link into apex sorted -------------------------------------------

    _SetupApexAPI: function () {     // private
        var self = this

        apex.debug.log('PTRAIL', '_SetupApexAPI', 'id:' + self.options.itemName)

        apex.item.create(self.options.itemName, {            
            enable: function () {            
                self.item$.prop('disabled', false)
                self.itemDisplay$.removeClass('apex-item-display-only display_only')
                self.itemDisplay$.addClass('popup_lov apex-item-text apex-item-popup-lov')
                if (self.searchButton$) {self.searchButton$.show()}
                self._FieldUpdateDisplay()
            },
            disable: function () {
                self.item$.prop('disabled', true)
                self.itemDisplay$.removeClass('popup_lov apex-item-text apex-item-popup-lov')
                self.itemDisplay$.addClass('apex-item-display-only display_only')
                if (self.searchButton$) {self.searchButton$.hide()}
                self._FieldUpdateDisplay()
            },
            isDisabled: function () {
                return self.item$.prop('disabled')
            },
            show: function () {
                self.itemDisplay$.show()
                if (self.searchButton$) {self.searchButton$.show()}
            },
            hide: function () {
                self.itemDisplay$.hide()
                if (self.searchButton$) {self.searchButton$.hide()}
            },
            setValue: function (pValue, pDisplayValue, pSuppressChangeEvent) {
                self.FieldSetValue(pValue, null, null, pSuppressChangeEvent)
            },
            getValue: function () {
                return self.current_value || ''
            },
            getValidity: function() {
                var l_validity = { valid: true };
                if (self.current_crumbs == 'FLAG_INVALID')
                    l_validity.valid = false;
                return l_validity;
            },
            getValidationMessage: function() {
                return self.options.invalidValue
            },
            isChanged: function () {
                return self.current_value !== self.options.initial_value
            }
        })
    },
    
// ======================= dialog functions =================================================================

// -------- _DialogCreate ------------------------------------------------------------
// -------- set up popup dialog -------------------------------------------

    _DialogCreate: function () {  // private
        var self = this
        
        apex.debug.log('PTRAIL', '_DialogCreate', 'id:' + self.options.itemName)

    // set up basic elements
    
        self.dialog$ = $(
            '<div id="' + self.options.itemName + '_DIALOG" title="Basic dialog">' +
                '<div class="t-PopupLOV-actions t-Form--large" style="position:relative">' +
                    '<input id="' + self.options.itemName + '_FILTER_TEXT" type="text" name="x02" size="20" maxlength="100" value="" class="apex-item-text" title="Search Term">' +
                    '<input id="' + self.options.itemName + '_FILTER_BUTTON" type="button" name="" value="Search" class="t-Button t-Button--hot t-Button--padLeft">' +
                '</div>' +       
                '<div id="' + self.options.itemName + '_ROWS" class="t-PopupLOV-links"></div>' + 
            '</div>'
            ).appendTo('body')
        
        self.dialogFilterText$   = $('#' + self.options.itemName + '_FILTER_TEXT')
        self.dialogRows$         = $('#' + self.options.itemName + '_ROWS')
        
        self.dialogRows$.css({height:400, overflow:'auto'})
    
    // add in event handlers
    
        self.dialog$.on('click', '#' + self.options.itemName + '_FILTER_BUTTON', function (e) {
            self.activeSearchTerm = self.dialogFilterText$.val()
            self._DialogSearchRecords(1)
        })   
        
        self.dialog$.on('keydown', '#' + self.options.itemName + '_FILTER_TEXT', function (e) {
            if (e.keyCode == 13) { 
                self.activeSearchTerm = self.dialogFilterText$.val()
                self._DialogSearchRecords(1)
            }/*
            else if (e.keyCode == 34) {  // XXX at higher level of dialog may want to add 38 => UP and 40 => DOWN, 33 => Page up, 34 => Page down
                ...
                e.stopPropagation()
            }*/
        })   
        
        self.dialog$.on('click', 'a', function (e) {
            self.dialog$.dialog('close')
            self.FieldSetValue(this.dataset.r, this.dataset.d, this.dataset.s)
        })  
        
        self.dialog$.on('click', '#' + self.options.itemName + '_PREV,#' + self.options.itemName + '_NEXT', function (e) {
            self._DialogSearchRecords(this.dataset.row)
        })
    },
    
// -------- _DialogSearchRecords ------------------------------------------------------------
// -------- Trigger a search for next rows and stick results into href list ----------------------------------

    _DialogSearchRecords: function (p_first_row) {     // private   
        var self = this
      
        apex.debug.log('PTRAIL', '_DialogSearchRecords', 'id:' + self.options.itemName, 'p_first_row:' + p_first_row)

        var items_needed = [self.options.pageItemsToSubmit, self.options.cascadingItems].filter(function (selector) {return (selector)}).join(',')        

        apex.server.plugin(
            self.options.ajaxIdentifier, 
            {
                x01:       'SEARCH_RECORDS',
                x02:       self.activeSearchTerm,
                x03:       p_first_row,
                pageItems: items_needed
            }, 
            {
                target:                   self.item$,
                dataType:                 'json',
                loadingIndicator:         '#' + self.options.itemName + '_DIALOG',
                loadingIndicatorPosition: 'centered',
                success: function (pData) {
                    
                    apex.debug.log('PTRAIL', 'SEARCH_RECORDS succeeded', 'id:' + self.options.itemName, 'rows_returned:' + pData.rows_returned)
                    
                    var display_html = '';
                    
                    if (pData.rows_returned == 0) {                        
                        display_html = '<br><div class="t-PopupLOV-pagination">' + self.options.noDataFound + '</div>'  // could have proper class on this
                    }
                    else {
                        var l_null_text = ''
                        if (self.options.display_null == 'Y') {
                            l_null_text = self.options.null_text + self.options.separator
                            if (!self.activeSearchTerm) {
                                display_html += '<br><a data-r="" data-d="" data-s="" href="javascript:null;">' + self.options.null_text + '</a>'
                            }
                        }

                        pData.rows.forEach(function (r, index) {
                            display_html += '<br><a data-r="' + r['R'] + '" data-d="' + r['D'] + '" data-s="' + r['S'] + '" href="javascript:null;">' + l_null_text + r['S'].replace(/:/g, self.options.separator) + '</a>'
                            })
                            
                        if (pData.first_row != 1 || pData.more_there ) {
                            display_html += '<br><div class="t-PopupLOV-pagination">Row(s) ' + pData.first_row + ' - ' + pData.last_row + '</div>'                        
                            if (pData.first_row != 1) {
                                display_html += '<input id="' + self.options.itemName + '_PREV" data-row="' + (pData.first_row - self.modalRows) + '" type="button" value="' + self.options.previousLabel + '" class="t-Button t-PopupLOV-button";">'
                            }
                            if (pData.more_there) {
                                display_html += '<input id="' + self.options.itemName + '_NEXT" data-row="' + (pData.last_row + 1) + '" type="button" value="' + self.options.nextLabel + '" class="t-Button t-PopupLOV-button";">'
                            }
                        }
                    }
                    
                    self.dialogRows$.html(display_html)
                },
                error: function (p_XHR, p_text, p_error) {
                    apex.debug.log('PTRAIL', 'SEARCH_RECORDS failed for reason:', p_XHR, p_text, p_error)
                    apex.message.alert('Access to records failed for following reason: ' + p_error)
                }
            }
        )
    }    
})

