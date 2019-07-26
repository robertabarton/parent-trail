--====================== get_record ===============================================================

procedure get_record(p_query in varchar2, p_key in varchar2, p_ids out varchar2, p_crumbs out varchar2)
is
    l_query_result    apex_plugin_util.t_column_value_list;    
begin
    p_ids    := '';
    p_crumbs := '';

    if p_key is null or p_key = '' then
        return;        
    end if;
        
-- fetch data and give back frist couple of params --
    
    l_query_result := apex_plugin_util.get_data (
        p_sql_statement     => p_query,
        p_min_columns       => 3,
        p_max_columns       => 3,
        p_component_name    => null,
        p_search_type       => apex_plugin_util.c_search_lookup,
        p_search_column_no  => 1,
        p_search_string     => p_key,
        p_max_rows          => 1
        );

    p_ids    := ltrim(l_query_result(2)(1), ':');
    p_crumbs := ltrim(l_query_result(3)(1), ':');

exception
    when no_data_found then 
        p_ids    := 'FLAG_INVALID';  -- picked up and processed client side
        p_crumbs := 'FLAG_INVALID';
end;

--======================= render =========================================================

procedure render (
  p_item   in apex_plugin.t_item,
  p_plugin in apex_plugin.t_plugin,
  p_param  in apex_plugin.t_item_render_param,
  p_result in out nocopy apex_plugin.t_item_render_result
)
is
    l_ids                 varchar2(4000);
    l_crumbs              varchar2(4000);
    
    function get_message(p_message in varchar2, p_default in varchar2) return varchar2
    is
        l_return    varchar2(500);
    begin
        l_return := apex_lang.message(p_message);
        if l_return = p_message then
            return p_default;
        end if;
        return l_return;
    end;
begin
    apex_debug.enter('PTRAIL.render', 
        'name',             p_item.name,
        'separator',        p_item.attribute_01,
        'showSearchButton', p_item.attribute_02,
        'lov_definition',   p_item.lov_definition,
        'lov_display_null', case when p_item.lov_display_null then 'Y' else 'N' end,
        'lov_null_text',    p_item.lov_null_text,
        'lov_null_value',   p_item.lov_null_value        
        );
    
-- get data you need --

    get_record(p_item.lov_definition, p_param.value, l_ids, l_crumbs);
    
-- embed hidden input that hold value --
    
    sys.htp.prn('<input'); 
    sys.htp.prn(' type="hidden" ');
    sys.htp.prn(apex_plugin_util.get_element_attributes(p_item, apex_plugin.get_input_name_for_page_item(false)));    
    if p_param.is_readonly or p_param.is_printer_friendly then
        sys.htp.prn(' disabled');  
    end if;   
    sys.htp.prn('>');

-- field icon --

  --if length(trim(p_item.icon_css_classes)) > 0 then
      --sys.htp.prn('<span class="apex-item-icon fa ' || p_item.icon_css_classes || '"></span>');
  --end if;    

-- raw text for display --

    sys.htp.prn('<span id="' || p_item.name || '_DISPLAY" ');
    sys.htp.prn(' class="' || case when p_param.is_readonly then 'apex-item-display-only display_only' else 'popup_lov apex-item-text apex-item-popup-lov' end); 
  --sys.htp.prn(case when length(trim(p_item.icon_css_classes)) > 0 then ' apex-item-has-icon' end);
    sys.htp.prn(' ' || p_item.element_css_classes || '">'); 
    sys.htp.prn('</span>');

-- add in search button --

    if p_item.attribute_02 = 'Y' then
        sys.htp.prn('<button type="button" id="' || p_item.name || '_BUTTON"');
        sys.htp.prn(' class="a-Button modal-lov-button a-Button--popupLOV"');
        if p_param.is_readonly or p_param.is_printer_friendly then
            sys.htp.prn(' hidden');
        end if;
        sys.htp.prn('>');
      --sys.htp.prn('<span class="a-Icon icon-popup-lov"></span>');
        sys.htp.prn('</button>');
    end if;

-- associate javascript side code with the item --

    apex_javascript.add_onload_code (
        '$("#' || p_item.name || '").parentTrail({'
              || 'id: "'                || p_item.name || '_MODAL",'
              || 'itemName: "'          || p_item.name || '",'
              || 'ajaxIdentifier: "'    || apex_plugin.get_ajax_identifier || '",'
              || 'cascadingItems: "'    || apex_plugin_util.item_names_to_jquery(p_item_names => p_item.lov_cascade_parent_items, p_item => p_item) || '",'  -- XXX probably don't need to jquery these
              || 'pageItemsToSubmit: "' || apex_plugin_util.item_names_to_jquery(p_item_names => p_item.ajax_items_to_submit, p_item => p_item) || '",'
              || 'separator: "'         || replace(p_item.attribute_01, '"', '&quot;') || '",'
              || 'showSearchButton: "'  || p_item.attribute_02 || '",'
              || 'display_null: "'      || case when p_item.lov_display_null then 'Y' else 'N' end || '",'
              || 'null_text: "'         || apex_escape.html(p_item.lov_null_text) || '",'
              || 'null_value: "'        || apex_escape.html(p_item.lov_null_value) || '",'
              || 'invalidValue: "'      || apex_escape.html(get_message('PTRAIL_INVALID_VALUE', 'Invalid value')) || '",'
              || 'title: "'             || apex_escape.html(get_message('PTRAIL_DIALOG_TITLE', 'Select value')) || '",'
              || 'noDataFound: "'       || apex_escape.html(get_message('PTRAIL_NO_DATA_FOUND', 'No matching records found')) || '",'
              || 'previousLabel: "'     || wwv_flow_lang.system_message('PAGINATION.PREVIOUS') || '",'
              || 'nextLabel: "'         || wwv_flow_lang.system_message('PAGINATION.NEXT') || '",'
              || 'initial_value: "'     || apex_escape.html(p_param.value) || '",'
              || 'initial_ids: "'       || l_ids || '",'
              || 'initial_crumbs: "'    || l_crumbs || '"'         
              ||'});'
    );

end render;

--======================= ajax =========================================================

procedure ajax(
    p_item   in            apex_plugin.t_item,
    p_plugin in            apex_plugin.t_plugin,
    p_param  in            apex_plugin.t_item_ajax_param,
    p_result in out nocopy apex_plugin.t_item_ajax_result)
is
    l_action            varchar2(256) := apex_application.g_x01;

    procedure ajax_get_record(
        p_item   in            apex_plugin.t_item,
        p_plugin in            apex_plugin.t_plugin,
        p_param  in            apex_plugin.t_item_ajax_param,
        p_result in out nocopy apex_plugin.t_item_ajax_result)
    is
        l_ids               varchar2(4000);
        l_crumbs            varchar2(4000);
    begin
        apex_debug.enter('PTRAIL.ajax_get_record', 
            'value',           apex_application.g_x02
            );
        
    -- fetch data --
    
        get_record(p_item.lov_definition, apex_application.g_x02, l_ids, l_crumbs);

    -- feed into json for return to client --
    
        apex_plugin_util.print_json_http_header;
        
        apex_json.open_object();
        apex_json.write('r_ids',     l_ids);     -- might want to apex_escape these
        apex_json.write('r_crumbs',  l_crumbs);  -- but make sure also escape separator
        apex_json.close_object();

    end ajax_get_record;
        
    procedure ajax_search_records(
        p_item   in            apex_plugin.t_item,
        p_plugin in            apex_plugin.t_plugin,
        p_param  in            apex_plugin.t_item_ajax_param,
        p_result in out nocopy apex_plugin.t_item_ajax_result)
    is
        l_filter            varchar2(256) := upper(apex_application.g_x02);
        l_first_row         number := nvl(to_number(apex_application.g_x03), 1);
        l_max_rows          number := 100;
        l_result            apex_plugin_util.t_column_value_list;
        l_returned_rows     number;
    begin
        apex_debug.enter('PTRAIL.ajax_search_records', 
            'filter',           l_filter,
            'first_row',        l_first_row
            );
        
    -- fetch data --

        l_result := apex_plugin_util.get_data (
            p_sql_statement     => p_item.lov_definition,
            p_min_columns       => 3,
            p_max_columns       => 3,
            p_component_name    => p_item.name,
            p_search_type       => case when length(l_filter) > 0 then apex_plugin_util.c_search_contains_ignore else null end,
            p_search_column_no  => 3,
            p_search_string     => l_filter,
            p_first_row         => l_first_row,
            p_max_rows          => l_max_rows + 1
        );

        l_returned_rows := l_result(1).count;
        
    -- feed into json for return to client --
    
        apex_plugin_util.print_json_http_header;
        
        apex_json.open_object();
        
        apex_json.write('rows_returned', least(l_returned_rows, l_max_rows), true);
        apex_json.write('first_row', l_first_row, true);
        apex_json.write('last_row', l_first_row + least(l_returned_rows, l_max_rows) - 1, true);
        apex_json.write('more_there', case when l_returned_rows > l_max_rows then true else false end, true); 
        
        apex_json.open_array('rows');

        for i in 1..least(l_returned_rows, l_max_rows) loop
        
            apex_json.open_object();
            
            apex_json.write('R', l_result(1)(i), true);
            apex_json.write('D', ltrim(l_result(2)(i), ':'), true);   -- might want to apex_escape these
            apex_json.write('S', ltrim(l_result(3)(i), ':'), true);

            apex_json.close_object();

        end loop;

        apex_json.close_all();

    end ajax_search_records;
begin
    apex_debug.enter('PTRAIL.ajax', 
        'action',           apex_application.g_x01,
        'name',             p_item.name,
        'lov_definition',   p_item.lov_definition
        );
        
    if l_action = 'GET_RECORD' then
        ajax_get_record(p_item, p_plugin, p_param, p_result);
    elsif l_action = 'SEARCH_RECORDS' then
        ajax_search_records(p_item, p_plugin, p_param, p_result);
    end if;
end ajax;
