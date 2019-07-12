$.widget('rabarton.parentTrail', {

    options: {
        id: '',
        title: '',
        itemName: '',
        ajaxIdentifier: '',
        cascadingItems: '',
        pageItemsToSubmit: '',
        separator: ' » ',
        placeholder: '',
        display_null: 'N',
        null_text: '',
        null_value: '',
        showSearchButton: 'Y',
        noDataFound: '',
        previousLabel: 'Previous',
        nextLabel: 'Next',

        initial_value: '',
        initial_ids: '',
        initial_crumbs: '',

        modalWidth: 500,
        modalHeight: 500,
        modalRows: 100      
    },

    _returnValue: '',

    _item$: null,
    _itemDisplay$: null,
    _searchButton$: null,
    
    _dialog$: null,
    _dialogFilterText$: null,
    _dialogRows$: null,
    
    _topApex: apex.util.getTopApex(),

    _disableChangeEvent: false,
    _activeSearchTerm: '',

// ======================= public =================================================================
// -------- _Create ----------------------------------------------------------------
// -------- jquery widget creation -------------------------------------------------
   
    _create: function () {    // public
        var self = this

        self._item$           = $('#' + self.options.itemName)      
        self._itemDisplay$    = $('#' + self.options.itemName + '_DISPLAY')      

    // set up item in apex
    
        self.FieldInitApex()
       
    // set up search and accompanying dialog
        
        if (self.options.showSearchButton == 'Y') {  // XXX or is_printer_friendly or is disabled or is read only etc
            
            self._searchButton$   = $('#' + self.options.itemName + '_BUTTON')
        
            self._searchButton$.on('click', function (e) {
                if (!self._dialog$) {
                    self.DialogCreate()
                }
                else {
                    self._activeSearchTerm = ''
                    self._dialogFilterText$.val('')
                    self._dialogRows$.html('<br>')
                }
                self._dialog$.dialog({
                    title: self.options.title,
                    modal: true,
                    height: self.options.modalHeight,
                    width: self.options.modalWidth,
                    dialogClass: 'ui-dialog--apex',
                    close: function() {
                        self._dialogRows$.html('<br>')
                    }
                })
                self.DialogSearchRecords(1)
            })
        }
        
        $(self.options.cascadingItems).on('change', function () {
            $s(self.options.itemName, null, '')    // XXX perhaps need name of no name 
        })
    },
    
// ======================= private field functions =================================================================

// -------- FieldCalcDisplayHTML ------------------------------------------------------------
// -------- Work out html for a certain value------------------------------------------------------------

    FieldCalcDisplayHTML: function (p_value, p_ids, p_crumbs) {       // private
        var self = this
        
        function pad_zero(num, size) { 
            var s = num + ""
            while (s.length < size) s = "0" + s
            return s
        } 
        
        if (p_crumbs == 'FLAG_INVALID') {
            return 'Invalid entry'
        }
        
        var display_html = ""
        if (self._item$.prop('disabled')) {   // XXX watch out also for p_param.is_printer_friendly
            if (self.options.display_null == 'Y') {
                display_html += self.options.null_text
            }
            if (p_crumbs) {
                if (display_html.length > 0) {
                    display_html += self.options.separator
                }
                display_html += p_crumbs
            }
            return display_html        
        }
    
        if (self.options.display_null == 'Y') {
            display_html += '<a href="javascript:$s(\'' + self.options.itemName + '\',\'\',$v(\'' + self.options.itemName + '_DISPLAY\').substr(0,parseInt(\'XXXX\')));">' + self.options.null_text + '</a>'
            display_html = display_html.replace('XXXX', pad_zero(display_html.length, 4))
        }

        if (!p_value || p_value.length === 0) {
            return display_html ? display_html : self.options.placeholder
        }
        
        var crumbs = p_crumbs.split(self.options.separator)
        var ids = p_ids.split(self.options.separator)

        for (var i = 0; i < crumbs.length; i++) {
            if (display_html.length > 0) {
                display_html += self.options.separator
            }
            display_html += '<a href="javascript:$s(\'' + self.options.itemName + '\',\'' + ids[i] + '\',$v(\'' + self.options.itemName + '_DISPLAY\').substr(0,parseInt(\'XXXX\')));">' + crumbs[i] + '</a>'
            display_html = display_html.replace('XXXX', pad_zero(display_html.length, 4))     // take care that length entry does not alter length of string ...
        }

        return display_html
    },
    
// -------- FieldUpdateDisplay ------------------------------------------------------------
// -------- Something changed and we need to fetch data and then update display -------------------------------------------

    FieldUpdateDisplay: function () {   // private
        var self = this

        if (!self._returnValue || self._returnValue == '') {
            self._itemDisplay$.html(self.FieldCalcDisplayHTML(self._returnValue, null, null))
        }
        else {
            apex.server.plugin(
                self.options.ajaxIdentifier, 
                {
                    x01: 'GET_RECORD',
                    x02: self._returnValue,
                    pageItems: [self.options.pageItemsToSubmit, self.options.cascadingItems].filter(function (selector) {return (selector)}).join(',')
                }, 
                {
                    dataType: 'json',
                    success: function (pData) 
                    {
                        self._itemDisplay$.html(self.FieldCalcDisplayHTML(self._returnValue, pData.r_ids, pData.r_crumbs))
                    }
                }
            )
        }
    },

// -------- FieldInitApex ------------------------------------------------------------
// -------- Get link into apex sorted -------------------------------------------

    FieldInitApex: function () {     // private
        var self = this

        apex.item.create(self.options.itemName, {
            
            enable: function () {            
                self._item$.prop('disabled', false)
                if (self._searchButton$) {self._searchButton$.show()}
                self.FieldUpdateDisplay()
            },
            disable: function () {
                self._item$.prop('disabled', true)
                if (self._searchButton$) {self._searchButton$.hide()}
                self.FieldUpdateDisplay()
            },
            isDisabled: function () {
                return self._item$.prop('disabled')
            },
            show: function () {
                self._itemDisplay$.show()
                if (self._searchButton$) {self._searchButton$.show()}
            },
            hide: function () {
                self._itemDisplay$.hide()
                if (self._searchButton$) {self._searchButton$.hide()}
            },
            setValue: function (pValue, pDisplayValue, pSuppressChangeEvent) {
                _disableChangeEvent = pSuppressChangeEvent
                self._returnValue = '' + pValue     // take care to keep things as a string
                _disableChangeEvent = false

                if (pDisplayValue) {
                    self._itemDisplay$.html(pDisplayValue);
                }
                else {
                    self.FieldUpdateDisplay()
                }
                if (self._returnValue) {   // XXX need finer control than this on validity
                    apex.message.clearErrors(self.options.itemName)
                }
            },
            getValue: function () {
                return self._returnValue || ''
            }, /*
            getValidity: function() {
                var l_validity = { valid: true };
                ... l_validity.valid = false;
                return l_validity;
            }, */
            isChanged: function () {
                return self._returnValue !== self.options.initial_value
            }
        })
                
        self._item$['trigger'] = function (type, data) {
            if (type === 'change' && self._disableChangeEvent) {
                return     // don't trigger change in middle of async callback
            }
            $.fn.trigger.call(self._item$, type, data)
        } 
        
        apex.item(self.options.itemName).setValue(self.options.initial_value, self.FieldCalcDisplayHTML(self.options.initial_value, self.options.initial_ids, self.options.initial_crumbs), true)      
    },
    
// ======================= private dialog functions =================================================================

// -------- DialogCreate ------------------------------------------------------------
// -------- set up popup dialog -------------------------------------------

    DialogCreate: function () {  // private
        var self = this
        
        self._dialog$ = $(
            '<div id="' + self.options.itemName + '_DIALOG" title="Basic dialog">' +
                '<div class="t-PopupLOV-actions t-Form--large" style="position:relative">' +
                    '<input id="' + self.options.itemName + '_FILTER_TEXT" type="text" name="x02" size="20" maxlength="100" value="" class="apex-item-text" title="Search Term">' +
                    '<input id="' + self.options.itemName + '_FILTER_BUTTON" type="button" name="" value="Search" class="t-Button t-Button--hot t-Button--padLeft">' +
                '</div>' +       
                '<div id="' + self.options.itemName + '_ROWS" class="t-PopupLOV-links"></div>' + 
            '</div>'
            ).appendTo('body')
        
        self._dialogFilterText$   = $('#' + self.options.itemName + '_FILTER_TEXT')
        self._dialogRows$         = $('#' + self.options.itemName + '_ROWS')
        
        self._dialogRows$.css({height:400, overflow:'auto'})
        
        self._dialog$.on('click', '#' + self.options.itemName + '_FILTER_BUTTON', function (e) {
            self._activeSearchTerm = self._dialogFilterText$.val()
            self.DialogSearchRecords(1)
        })        
        self._dialog$.on('keydown', '#' + self.options.itemName + '_FILTER_TEXT', function (e) {
            if (e.keyCode == 13) { 
                self._activeSearchTerm = self._dialogFilterText$.val()
                self.DialogSearchRecords(1)
            }/*
            else if (e.keyCode == 34) {  // XXX at higher level of dialog may want to add 38 => UP and 40 => DOWN, 33 => Page up, 34 => Page down
                ...
                e.stopPropagation()
            }*/
        })       
        self._dialog$.on('click', 'a', function (e) {
            var row$ = self._topApex.jQuery(this)
            self._dialog$.dialog('close')
            apex.item(self.options.itemName).setValue(row$.attr('data-r'), self.FieldCalcDisplayHTML(row$.attr('data-r'), row$.attr('data-d'), row$.attr('data-s')))
        })       
        self._dialog$.on('click', '#' + self.options.itemName + '_PREV,#' + self.options.itemName + '_NEXT', function (e) {
            self.DialogSearchRecords(self._topApex.jQuery(this).data('row'))
        })
    },
    
// -------- DialogSearchRecords ------------------------------------------------------------
// -------- Trigger a search for next rows and stick results into href list ----------------------------------

    DialogSearchRecords: function (p_first_row) {     // private   
        var self = this
      
        var items_needed = [self.options.pageItemsToSubmit, self.options.cascadingItems].filter(function (selector) {return (selector)}).join(',')        

        apex.server.plugin(
            self.options.ajaxIdentifier, 
            {
                x01: 'SEARCH_RECORDS',
                x02: self._activeSearchTerm,
                x03: p_first_row,
                pageItems: items_needed
            }, 
            {
                target: self._item$,
                dataType: 'json',
                loadingIndicator: '#' + self.options.itemName + '_DIALOG',
                loadingIndicatorPosition: 'centered',
                success: function (pData) {
                    
                    var display_html = '';
                    
                    if (pData.rows_returned == 0) {                        
                        display_html = '<br><div class="t-PopupLOV-pagination">' + self.options.noDataFound + '</div>'  // could have proper class on this
                    }
                    else {
                        var l_null_text = ''
                        if (self.options.display_null == 'Y') {
                            l_null_text = self.options.null_text + self.options.separator
                            if (!self._activeSearchTerm) {
                                display_html += '<br><a href="javascript:null;">' + self.options.null_text + '</a>'
                            }
                        }

                        pData.rows.forEach(function (r, index) {
                            display_html += '<br><a data-r="' + r['R'] + '" data-d="' + r['D'] + '" data-s="' + r['S'] + '" href="javascript:null;">' + l_null_text + r['S'] + '</a>'
                            })
                            
                        if (pData.first_row != 1 || pData.more_there ) {
                            display_html += '<br><div class="t-PopupLOV-pagination">Row(s) ' + pData.first_row + ' - ' + pData.last_row + '</div>'                        
                            if (pData.first_row != 1) {
                                display_html += '<input id="' + self.options.itemName + '_PREV" data-row="' + (pData.first_row - self.options.modalRows) + '" type="button" value="' + self.options.previousLabel + '" class="t-Button t-PopupLOV-button";">'
                            }
                            if (pData.more_there) {
                                display_html += '<input id="' + self.options.itemName + '_NEXT" data-row="' + (pData.last_row + 1) + '" type="button" value="' + self.options.nextLabel + '" class="t-Button t-PopupLOV-button";">'
                            }
                        }
                    }
                    
                    self._dialogRows$.html(display_html)
                }
            }
        )
    }    
})

