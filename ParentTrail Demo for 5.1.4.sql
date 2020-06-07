prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>1850484873155224
,p_default_application_id=>101
,p_default_owner=>'LOCAL_SCHEME'
);
end;
/
 
prompt APPLICATION 101 - Parent Trail Demo
--
-- Application Export:
--   Application:     101
--   Name:            Parent Trail Demo
--   Date and Time:   09:18 Sunday June 7, 2020
--   Exported By:     LOCAL_ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.4.00.08
--   Instance ID:     211627237081506
--

-- Application Statistics:
--   Pages:                      5
--     Items:                   18
--     Regions:                 23
--     Buttons:                  8
--     Dynamic Actions:         12
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:              5
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          1

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,101)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'LOCAL_SCHEME')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Parent Trail Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_102')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'694279789F8082FD21F3E7AB49B341BDAC04DDF39131D97AEE97C16660373B42'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(10740725623179473)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Parent Trail Plugin Demo'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'Parent Trail Release 1.1d'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'LOCAL_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200607091800'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(5624154882852003)
,p_name=>'Page list'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5624755972852004)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5625177485852004)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Locations'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5625591478852004)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Businesses'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sitemap'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5625974266852004)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Plugin details'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plug'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(10686224609175870)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10739855378175916)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5519682505375265)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employees'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5544540835110204)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Locations'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-globe'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5553795493221200)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Businesses'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sitemap'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5563651421283309)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Plugin details'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-plug'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(10738315092175901)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(10738530695175910)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Author: Robert Barton'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5641634646069614)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'GitHub'
,p_list_item_link_target=>'https://github.com/robertabarton/parent-trail'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5642255313083148)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'e-mail'
,p_list_item_link_target=>'mailto:robert.barton@gitm.biz'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10685687253175870)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10685753779175870)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10685844492175870)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10685931449175870)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10686055219175870)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(10686108893175870)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(10739723207175915)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5520566363375267)
,p_short_name=>'Employees'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5545423163110207)
,p_short_name=>'Locations'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5558166156221213)
,p_short_name=>'Businesses'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5564591839283310)
,p_short_name=>'Plugin details'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(10740088474175917)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10686308365175873)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6284324485708372)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6284812848708373)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6285327851708374)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6285882369708374)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6286392184708374)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6286860107708375)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6287320226708375)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6287851904708375)
,p_page_template_id=>wwv_flow_api.id(10686308365175873)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10687237198175876)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6292113043708377)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6292622741708377)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6293175074708377)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6293632096708378)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6294187221708378)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6294677838708378)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6295120755708378)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6295608119708378)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6296131476708378)
,p_page_template_id=>wwv_flow_api.id(10687237198175876)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10688260313175876)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6297790920708379)
,p_page_template_id=>wwv_flow_api.id(10688260313175876)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6298216119708379)
,p_page_template_id=>wwv_flow_api.id(10688260313175876)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10688530335175876)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6302683058708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6303177181708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6303651943708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6304113190708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6304618670708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6305119942708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6305672353708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6306192445708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6306671316708381)
,p_page_template_id=>wwv_flow_api.id(10688530335175876)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10689502835175877)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6310243349708383)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6310744480708383)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6311227124708383)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6311753893708383)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6312268147708383)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6312772966708383)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6313263501708384)
,p_page_template_id=>wwv_flow_api.id(10689502835175877)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10690338990175877)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6315220628708384)
,p_page_template_id=>wwv_flow_api.id(10690338990175877)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6315706235708384)
,p_page_template_id=>wwv_flow_api.id(10690338990175877)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6316247859708385)
,p_page_template_id=>wwv_flow_api.id(10690338990175877)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10690826802175877)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6320577496708386)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6321054971708386)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6321514290708387)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6322046088708387)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6322552279708387)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6323025184708387)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6323509396708387)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6324031493708387)
,p_page_template_id=>wwv_flow_api.id(10690826802175877)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10691737183175877)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6327609335708389)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6328188845708389)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6328652155708389)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6329104090708389)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6329605384708389)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6330169270708389)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6330626334708390)
,p_page_template_id=>wwv_flow_api.id(10691737183175877)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(10692564324175878)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6332637540708390)
,p_page_template_id=>wwv_flow_api.id(10692564324175878)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6333165877708390)
,p_page_template_id=>wwv_flow_api.id(10692564324175878)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(6333623311708391)
,p_page_template_id=>wwv_flow_api.id(10692564324175878)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(10727506554175891)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(10727687954175891)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(10727765004175891)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10693056913175878)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6335129242708392)
,p_plug_template_id=>wwv_flow_api.id(10693056913175878)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10694824594175880)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10694948548175880)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6343946287708396)
,p_plug_template_id=>wwv_flow_api.id(10694948548175880)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6344478386708396)
,p_plug_template_id=>wwv_flow_api.id(10694948548175880)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10695229520175880)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6346049025708397)
,p_plug_template_id=>wwv_flow_api.id(10695229520175880)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6346501566708397)
,p_plug_template_id=>wwv_flow_api.id(10695229520175880)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10696160664175880)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6350500146708398)
,p_plug_template_id=>wwv_flow_api.id(10696160664175880)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6351066461708399)
,p_plug_template_id=>wwv_flow_api.id(10696160664175880)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10699544627175881)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6366413241708405)
,p_plug_template_id=>wwv_flow_api.id(10699544627175881)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6366983064708405)
,p_plug_template_id=>wwv_flow_api.id(10699544627175881)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10701695655175882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10702599160175882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6381978117708410)
,p_plug_template_id=>wwv_flow_api.id(10702599160175882)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10703358958175882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6385295677708411)
,p_plug_template_id=>wwv_flow_api.id(10703358958175882)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10704372026175882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10704659370175882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6390396664708413)
,p_plug_template_id=>wwv_flow_api.id(10704659370175882)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10704833095175882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6391995332708414)
,p_plug_template_id=>wwv_flow_api.id(10704833095175882)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6392441168708414)
,p_plug_template_id=>wwv_flow_api.id(10704833095175882)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10708010830175883)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6410850883708422)
,p_plug_template_id=>wwv_flow_api.id(10708010830175883)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6411354772708422)
,p_plug_template_id=>wwv_flow_api.id(10708010830175883)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10709253850175883)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(10709608027175883)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(6417603274708424)
,p_plug_template_id=>wwv_flow_api.id(10709608027175883)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10718205781175887)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10719911335175888)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10722373459175888)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10723187964175888)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10724346440175889)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10724879219175889)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10724960263175889)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10725035686175889)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10725166497175889)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10725893557175890)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(10726441381175890)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10710263493175884)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10710363118175884)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10712059111175885)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10714368840175885)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10714692791175885)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10714885737175886)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(10714885737175886)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10716106191175886)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10716333141175886)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(10717381765175886)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10727028424175890)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10727104418175890)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10727239456175890)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10727291358175890)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(10727441126175891)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(10728120136175891)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(10728331494175893)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(10728245165175892)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(10728985276175896)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(10691737183175877)
,p_default_dialog_template=>wwv_flow_api.id(10690338990175877)
,p_error_template=>wwv_flow_api.id(10688260313175876)
,p_printer_friendly_template=>wwv_flow_api.id(10691737183175877)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(10688260313175876)
,p_default_button_template=>wwv_flow_api.id(10727687954175891)
,p_default_region_template=>wwv_flow_api.id(10704833095175882)
,p_default_chart_template=>wwv_flow_api.id(10704833095175882)
,p_default_form_template=>wwv_flow_api.id(10704833095175882)
,p_default_reportr_template=>wwv_flow_api.id(10704833095175882)
,p_default_tabform_template=>wwv_flow_api.id(10704833095175882)
,p_default_wizard_template=>wwv_flow_api.id(10704833095175882)
,p_default_menur_template=>wwv_flow_api.id(10709253850175883)
,p_default_listr_template=>wwv_flow_api.id(10704833095175882)
,p_default_irr_template=>wwv_flow_api.id(10704372026175882)
,p_default_report_template=>wwv_flow_api.id(10714885737175886)
,p_default_label_template=>wwv_flow_api.id(10727104418175890)
,p_default_menu_template=>wwv_flow_api.id(10728120136175891)
,p_default_calendar_template=>wwv_flow_api.id(10728245165175892)
,p_default_list_template=>wwv_flow_api.id(10722373459175888)
,p_default_nav_list_template=>wwv_flow_api.id(10725893557175890)
,p_default_top_nav_list_temp=>wwv_flow_api.id(10725893557175890)
,p_default_side_nav_list_temp=>wwv_flow_api.id(10725035686175889)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(10695229520175880)
,p_default_dialogr_template=>wwv_flow_api.id(10694824594175880)
,p_default_option_label=>wwv_flow_api.id(10727104418175890)
,p_default_required_label=>wwv_flow_api.id(10727291358175890)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(10724960263175889)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(6079562935708302)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(6079908694708303)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(6080358130708303)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(6080777449708303)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(6081108883708303)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6185385131708339)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6185786354708339)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6186166156708339)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6186571740708339)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6186933723708339)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6187331274708339)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6187720222708339)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6188180477708339)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6188566183708340)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6188988558708340)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6189384123708340)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6189751874708340)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6190186391708340)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6190579582708340)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6190914879708340)
,p_theme_id=>42
,p_name=>'PRESERVE_LABEL_SPACING'
,p_display_name=>'Preserve Label Spacing'
,p_display_sequence=>1
,p_template_types=>'FIELD'
,p_help_text=>'Preserves the label space and enables use of the Label Column Span property.'
,p_null_text=>'Yes'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6191356576708340)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6191746170708340)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6192172088708340)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6192595408708340)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6192941201708341)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6193363220708341)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6193766171708341)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6194142817708341)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6194564208708341)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6194941033708341)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6195352212708341)
,p_theme_id=>42
,p_name=>'ICON_STYLE'
,p_display_name=>'Icon Style'
,p_display_sequence=>35
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6195743584708341)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6196150892708341)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6196506071708342)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6196950981708342)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6197383408708342)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6197787425708342)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6198155390708342)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6198545240708342)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6198941282708342)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6199307923708342)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6199749100708343)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6200153268708343)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6200505001708343)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6200922794708343)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6201326115708343)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6201709488708343)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6202115043708343)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6202587196708343)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6202947135708343)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6203397672708343)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6203737614708343)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6204161310708344)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6204583598708344)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6204963194708344)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6205307710708344)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6205778617708344)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6206195254708344)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6206577805708344)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6206945548708344)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6207311531708344)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6207726661708345)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6208126613708345)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6208528072708345)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6208967950708345)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6209333381708345)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6209716648708345)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6210188875708345)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6210591794708345)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6210927758708345)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6211393117708345)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6211707936708346)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6212171692708346)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6212573943708346)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6212978328708346)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6213387637708346)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(6213776998708346)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6234513838708353)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(6188566183708340)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6235218476708353)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(6188180477708339)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6235994283708354)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(6191356576708340)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6236610893708354)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(6189384123708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6237371771708354)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(6189384123708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6238096293708354)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(6189384123708340)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6238775913708355)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(6189384123708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6239421655708355)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(6190579582708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6240150361708355)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(6190579582708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6240886067708355)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(6190579582708340)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6241534490708356)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(6190579582708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6242236165708356)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(6204583598708344)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6242979012708356)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(6203397672708343)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6243605326708356)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(6203737614708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6244379848708357)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(6203737614708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6245043645708357)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(6203397672708343)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6245790554708357)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(6191746170708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6246423545708357)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(6191746170708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6247175049708357)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(6191746170708340)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6247882533708358)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(6191746170708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6248527721708358)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(6192595408708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6249209346708358)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(6192595408708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6249937205708358)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(6192595408708340)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6250696624708358)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(6192595408708340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6251343822708359)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(6186166156708339)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6252053007708359)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(6186571740708339)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6252770889708359)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(6186933723708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6253438910708359)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(6187331274708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6254150833708360)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(6187720222708339)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6254850296708360)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(6192172088708340)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6255505522708360)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(6188180477708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6256213445708360)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(6185385131708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6256937150708361)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(6185385131708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6257630443708361)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(6185385131708339)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6258323929708361)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(6189751874708340)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6259067092708361)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(6190186391708340)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6259759486708361)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(6188566183708340)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6260442799708362)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(6205778617708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6261137513708362)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(6205778617708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6261848960708362)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(6205778617708344)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6262505969708362)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(6205778617708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6263230943708363)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(6206195254708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6263916397708363)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(6206195254708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6264648400708363)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(6206195254708344)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6265399903708363)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(6206195254708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6266082511708363)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(6206577805708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6266717552708364)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(6206577805708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6267448278708364)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(6206577805708344)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6268170659708364)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(6206577805708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6268891422708364)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(6207311531708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6269590597708365)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(6207311531708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6270256755708365)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(6207311531708344)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6270982349708365)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(6207311531708344)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6271616056708365)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(6204963194708344)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6272304876708365)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(6188180477708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6273007326708366)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(6186166156708339)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6273761958708366)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(6186571740708339)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6274451122708366)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(6186933723708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6275128829708366)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(6187331274708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6275823656708367)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(6187720222708339)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6276500775708367)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(6188988558708340)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6277227679708367)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(6204161310708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6277683069708367)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6278315543708367)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(6188566183708340)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6279069741708368)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(6186166156708339)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6279758159708368)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(6188566183708340)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(6280431459708368)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(6192172088708340)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10690758561175877)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(10690338990175877)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10692909652175878)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(10692564324175878)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10693256648175879)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10693486101175880)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(6198941282708342)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10693618767175880)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(6198545240708342)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10693760105175880)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(6198545240708342)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10693981469175880)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(6198155390708342)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694113088175880)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(6197787425708342)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694217467175880)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(6198941282708342)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694288613175880)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(6198155390708342)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694451518175880)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(6198941282708342)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694495038175880)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(6198155390708342)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694614230175880)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(6198941282708342)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10694783434175880)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10693056913175878)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(6197787425708342)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10695623680175880)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10695229520175880)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10695864639175880)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(10695229520175880)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(6200505001708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10695978555175880)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(10695229520175880)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10695990078175880)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(10695229520175880)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(6200505001708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10696512675175880)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(6208967950708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10696647123175880)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(6208967950708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10696710141175881)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(6208967950708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10696915092175881)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697005791175881)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697131567175881)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697248379175881)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(6208967950708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697299850175881)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697577566175881)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697622151175881)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697743743175881)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697856027175881)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10697926773175881)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698143446175881)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(6202587196708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698321409175881)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(6200153268708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698414004175881)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(6202587196708343)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698570627175881)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698594465175881)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698725576175881)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698843550175881)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(6200153268708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698902287175881)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10698997628175881)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10699198137175881)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(6199307923708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10699352271175881)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(6199307923708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10699399604175881)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10696160664175880)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10699842711175881)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10699984319175881)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700041050175881)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700173115175881)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700271618175881)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700306243175881)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700430900175881)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700572354175881)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700589325175882)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700886662175882)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(6201326115708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10700917126175882)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(6201326115708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701047015175882)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(6200153268708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701125751175882)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701258623175882)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701304623175882)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701452306175882)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701518664175882)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(6200153268708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701657806175882)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10699544627175881)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10701790838175882)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10701695655175882)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10702058646175882)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10701695655175882)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(6206945548708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10702106573175882)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10701695655175882)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(6206945548708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10702288152175882)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10701695655175882)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(6206945548708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10702451138175882)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10701695655175882)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(6200922794708343)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10702522756175882)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10701695655175882)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(6200922794708343)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10702969441175882)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10702599160175882)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(6202115043708343)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703012139175882)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10702599160175882)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703173734175882)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10702599160175882)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703193522175882)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10702599160175882)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703584282175882)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703683815175882)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703851701175882)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(6201709488708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10703911135175882)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(6201709488708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10704031669175882)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10704123808175882)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10704267996175882)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10703358958175882)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(6201709488708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10704476936175882)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704372026175882)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10704525795175882)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704372026175882)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705095994175882)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705275399175882)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705295765175883)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705401685175883)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(6199749100708343)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705573629175883)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705639081175883)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705730266175883)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705851700175883)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10705974275175883)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706027925175883)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706093387175883)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706258810175883)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706337299175883)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706404160175883)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706581627175883)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706595973175883)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706735416175883)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706799952175883)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10706922788175883)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(6197383408708342)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707083621175883)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(6202587196708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707122684175883)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(6200153268708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707286071175883)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(6202587196708343)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707298789175883)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707412156175883)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707519299175883)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707628297175883)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(6200153268708343)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707694998175883)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707804961175883)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10707963697175883)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(10704833095175882)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(6207726661708345)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10708486940175883)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10708010830175883)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(6205307710708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10708640776175883)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10708010830175883)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(6208528072708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10708704558175883)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10708010830175883)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10708793647175883)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10708010830175883)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(6208528072708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709076039175883)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10708010830175883)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(6208126613708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709148554175883)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10708010830175883)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(6208126613708345)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709378089175883)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10709253850175883)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(6206945548708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709404731175883)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10709253850175883)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709564096175883)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(10709253850175883)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(6206945548708344)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10709980700175883)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(10709608027175883)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(6202947135708343)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10710086550175883)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10709608027175883)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(6202947135708343)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10710114751175883)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(10709608027175883)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10710550384175884)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(6210188875708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10710730201175884)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10710886286175884)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(6210188875708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10710953109175885)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711083165175885)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(6210188875708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711177022175885)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711190836175885)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711379873175885)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(6210188875708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711471618175885)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(6210188875708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711539175175885)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711658326175885)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711692415175885)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711798143175885)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10711894864175885)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10710363118175884)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712163552175885)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712353476175885)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(6210591794708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712442153175885)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712499688175885)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(6210591794708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712665050175885)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712717845175885)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(6210591794708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10712819175175885)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713039261175885)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(6213776998708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713213666175885)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(6209716648708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713322385175885)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(6209716648708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713467273175885)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(6213776998708346)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713653712175885)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(6211707936708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713711330175885)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(6211707936708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713813735175885)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(6213776998708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713982641175885)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10713989737175885)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(6210591794708345)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10714184847175885)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10714195000175885)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10712059111175885)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10714488257175885)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10714368840175885)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(6211393117708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10714589916175885)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10714368840175885)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(6211393117708345)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715059591175886)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(6209333381708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715177822175886)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(6209333381708345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715288509175886)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(6213387637708346)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715503745175886)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(6212978328708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715668856175886)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(6212978328708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715695457175886)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(6212978328708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715795018175886)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(6213387637708346)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10715942917175886)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716026346175886)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10714885737175886)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(6212978328708346)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716243953175886)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(10716106191175886)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(6213776998708346)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716554761175886)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716669401175886)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716701207175886)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716788802175886)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10716895604175886)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717000664175886)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717187185175886)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717235301175886)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10716333141175886)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717446284175886)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717566562175886)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717654311175886)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717721744175886)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717814586175886)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(6212573943708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10717897669175886)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718028725175886)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718160977175886)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(10717381765175886)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(6212171692708346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718466470175887)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718559665175887)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718619260175887)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718725184175887)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718882099175887)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10718943234175887)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719073021175887)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719269963175888)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(6193363220708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719309842175888)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(6193363220708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719400497175888)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719499518175888)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(6193363220708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719601589175888)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719752896175888)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(6193363220708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10719824886175888)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10718205781175887)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(6193363220708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720067018175888)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720243111175888)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(6193766171708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720340977175888)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720421691175888)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(6193766171708341)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720525192175888)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720618348175888)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(6193766171708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720784325175888)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10720946531175888)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(6196950981708342)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721070710175888)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721206307175888)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(6192941201708341)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721292667175888)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(6196950981708342)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721545583175888)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(6194941033708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721638187175888)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(6194941033708341)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721736726175888)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(6196950981708342)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721846023175888)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721981183175888)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(6193766171708341)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10721989616175888)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(6192941201708341)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722185926175888)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722275821175888)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722484777175888)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10722373459175888)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(6196950981708342)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722507030175888)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10722373459175888)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722642982175888)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10722373459175888)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722718302175888)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10722373459175888)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10722971951175888)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10722373459175888)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(6194564208708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723054205175888)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10722373459175888)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(6194564208708341)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723254517175888)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723345140175888)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723431253175888)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723578544175888)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723615429175888)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723873130175888)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(6196506071708342)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10723959487175888)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724066271175888)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724166844175889)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724265557175889)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(10723187964175888)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724404848175889)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(10724346440175889)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724516689175889)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10724346440175889)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724659270175889)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10724346440175889)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10724720840175889)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10724346440175889)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725287631175889)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(6194941033708341)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725357317175889)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(6196150892708341)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725406475175889)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(6194941033708341)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725548444175889)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(6196506071708342)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725651482175889)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(6196950981708342)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725726938175890)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(6196950981708342)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725852596175890)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(10725166497175889)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(6196506071708342)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10725988265175890)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10725893557175890)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726089062175890)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10725893557175890)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726210059175890)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10725893557175890)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726372237175890)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(10725893557175890)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726591583175890)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10726441381175890)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(6195743584708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726784835175890)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(10726441381175890)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(6195743584708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726854167175890)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(10726441381175890)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(6195743584708341)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10726932564175890)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(10726441381175890)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10727925731175891)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(10727765004175891)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(6185786354708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(10728057041175891)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(10727765004175891)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(6185786354708339)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(10738636913175911)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(10740725623179473)
,p_name=>'No_authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/item_type/rabarton_parenttrail
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(10741678269412622)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'RABARTON.PARENTTRAIL'
,p_display_name=>'Parent Trail'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','RABARTON.PARENTTRAIL'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#Client Side Code#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--====================== get_record ===============================================================',
'',
'procedure get_record(p_query in varchar2, p_key in varchar2, p_ids out varchar2, p_crumbs out varchar2)',
'is',
'    l_query_result    apex_plugin_util.t_column_value_list;    ',
'begin',
'    p_ids    := '''';',
'    p_crumbs := '''';',
'',
'    if p_key is null or p_key = '''' then',
'        return;        ',
'    end if;',
'        ',
'-- fetch data and give back frist couple of params --',
'    ',
'    l_query_result := apex_plugin_util.get_data (',
'        p_sql_statement     => p_query,',
'        p_min_columns       => 3,',
'        p_max_columns       => 3,',
'        p_component_name    => null,',
'        p_search_type       => apex_plugin_util.c_search_lookup,',
'        p_search_column_no  => 1,',
'        p_search_string     => p_key,',
'        p_max_rows          => 1',
'        );',
'',
'    p_ids    := ltrim(l_query_result(2)(1), '':'');',
'    p_crumbs := ltrim(l_query_result(3)(1), '':'');',
'',
'exception',
'    when no_data_found then ',
'        p_ids    := ''FLAG_INVALID'';  -- picked up and processed client side',
'        p_crumbs := ''FLAG_INVALID'';',
'end;',
'',
'--======================= render =========================================================',
'',
'procedure render (',
'  p_item   in apex_plugin.t_item,',
'  p_plugin in apex_plugin.t_plugin,',
'  p_param  in apex_plugin.t_item_render_param,',
'  p_result in out nocopy apex_plugin.t_item_render_result',
')',
'is',
'    l_apex_version        apex_release.version_no%type;',
'    l_ids                 varchar2(4000);',
'    l_crumbs              varchar2(4000);',
'    ',
'    function get_message(p_message in varchar2, p_default in varchar2) return varchar2',
'    is',
'        l_return    varchar2(500);',
'    begin',
'        l_return := apex_lang.message(p_message);',
'        if l_return = p_message then',
'            return p_default;',
'        end if;',
'        return l_return;',
'    end;',
'begin',
'    apex_debug.enter(''PTRAIL.render'', ',
'        ''name'',             p_item.name,',
'        ''separator'',        p_item.attribute_01,',
'        ''showSearchButton'', p_item.attribute_02,',
'        ''lov_definition'',   p_item.lov_definition,',
'        ''lov_display_null'', case when p_item.lov_display_null then ''Y'' else ''N'' end,',
'        ''lov_null_text'',    p_item.lov_null_text,',
'        ''lov_null_value'',   p_item.lov_null_value        ',
'        );',
'        ',
'-- get data you need --',
'',
'    get_record(p_item.lov_definition, p_param.value, l_ids, l_crumbs);',
'    ',
'-- see what apex release we are on --',
'',
'    select version_no into l_apex_version from apex_release;',
'',
'-- embed hidden input that hold value --',
'           ',
'    sys.htp.prn(''<input type="hidden" '');',
'    sys.htp.prn(apex_plugin_util.get_element_attributes(p_item, apex_plugin.get_input_name_for_page_item(false)));    ',
'    sys.htp.prn(''>'');',
'',
'-- now what gets displayed --',
'',
'    if p_param.is_readonly or p_param.is_printer_friendly then',
'    ',
'        sys.htp.prn(''<span id="'' || p_item.name || ''_DISPLAY" class="display_only apex-item-display-only '' || p_item.element_css_classes || ''"></span>'');',
'        ',
'    elsif apex_string.split(l_apex_version, ''.'')(1) = ''5'' then    -- sandwich into table cells',
'    ',
'        sys.htp.prn(''<table border="0" cellpadding="0" cellspacing="0" class="lov"><tbody><tr>'');',
'        sys.htp.prn(''<td id="'' || p_item.name || ''_DISPLAY" class="u-TF-item--text" style="width:100%; min-width:'' || p_item.element_width || ''ch;"></td>'');   -- opportunistic piggy back off css-less structure',
'        ',
'        if p_item.attribute_02 = ''Y'' then  -- add search button',
'            sys.htp.prn(''<td style="vertical-align:top";>'');',
'            sys.htp.prn(''<button type="button" id="'' || p_item.name || ''_BUTTON" class="a-Button modal-lov-button a-Button--popupLOV">'');',
'            sys.htp.prn(''<span class="a-Icon icon-popup-lov"></span>'');',
'            sys.htp.prn(''</button>'');',
'            sys.htp.prn(''</td>'');',
'        end if;',
'        ',
'        sys.htp.prn(''</tr></tbody></table>'');',
'        ',
'    else  -- apex 18, 19 so can drop the td''s',
'    ',
'        sys.htp.prn(''<span id="'' || p_item.name || ''_DISPLAY" class="popup_lov apex-item-text apex-item-popup-lov '' || p_item.element_css_classes || ''" style="min-width:'' || p_item.element_width || ''ch;"></span>'');',
'',
'        if p_item.attribute_02 = ''Y'' then  -- add search button',
'            sys.htp.prn(''<button type="button" id="'' || p_item.name || ''_BUTTON" class="a-Button modal-lov-button a-Button--popupLOV">'');',
'            sys.htp.prn(''<span class="a-Icon icon-popup-lov"></span>'');',
'            sys.htp.prn(''</button>'');',
'        end if;',
'        ',
'   end if;',
'        ',
'-- associate javascript side code with the item --',
'',
'    apex_javascript.add_onload_code (',
'        ''$("#'' || p_item.name || ''").parentTrail({''',
'              || ''itemName: "''          || p_item.name || ''",''',
'              || ''ajaxIdentifier: "''    || apex_plugin.get_ajax_identifier || ''",''',
'              || ''cascadingItems: "''    || apex_plugin_util.item_names_to_jquery(p_item_names => p_item.lov_cascade_parent_items, p_item => p_item) || ''",''  -- XXX probably don''t need to jquery these',
'              || ''pageItemsToSubmit: "'' || apex_plugin_util.item_names_to_jquery(p_item_names => p_item.ajax_items_to_submit, p_item => p_item) || ''",''',
'              || ''separator: "''         || replace(p_item.attribute_01, ''"'', ''&quot;'') || ''",''',
'              || ''showSearchButton: "''  || p_item.attribute_02 || ''",''',
'              || ''display_null: "''      || case when p_item.lov_display_null then ''Y'' else ''N'' end || ''",''',
'              || ''null_text: "''         || apex_escape.html(p_item.lov_null_text) || ''",''',
'              || ''null_value: "''        || apex_escape.html(p_item.lov_null_value) || ''",''',
'              || ''invalidValue: "''      || apex_escape.html(get_message(''PTRAIL_INVALID_VALUE'', ''Invalid value'')) || ''",''',
'              || ''title: "''             || apex_escape.html(get_message(''PTRAIL_DIALOG_TITLE'', ''Select value'')) || ''",''',
'              || ''noDataFound: "''       || apex_escape.html(get_message(''PTRAIL_NO_DATA_FOUND'', ''No matching records found'')) || ''",''',
'              || ''previousLabel: "''     || wwv_flow_lang.system_message(''PAGINATION.PREVIOUS'') || ''",''',
'              || ''nextLabel: "''         || wwv_flow_lang.system_message(''PAGINATION.NEXT'') || ''",''',
'              || ''initial_value: "''     || apex_escape.html(p_param.value) || ''",''',
'              || ''initial_ids: "''       || l_ids || ''",''',
'              || ''initial_crumbs: "''    || l_crumbs || ''"''         ',
'              ||''});''',
'    );',
'',
'end render;',
'',
'--======================= ajax =========================================================',
'',
'procedure ajax(',
'    p_item   in            apex_plugin.t_item,',
'    p_plugin in            apex_plugin.t_plugin,',
'    p_param  in            apex_plugin.t_item_ajax_param,',
'    p_result in out nocopy apex_plugin.t_item_ajax_result)',
'is',
'    l_action            varchar2(256) := apex_application.g_x01;',
'',
'    procedure ajax_get_record(',
'        p_item   in            apex_plugin.t_item,',
'        p_plugin in            apex_plugin.t_plugin,',
'        p_param  in            apex_plugin.t_item_ajax_param,',
'        p_result in out nocopy apex_plugin.t_item_ajax_result)',
'    is',
'        l_ids               varchar2(4000);',
'        l_crumbs            varchar2(4000);',
'    begin',
'        apex_debug.enter(''PTRAIL.ajax_get_record'', ',
'            ''value'',           apex_application.g_x02',
'            );',
'        ',
'    -- fetch data --',
'    ',
'        get_record(p_item.lov_definition, apex_application.g_x02, l_ids, l_crumbs);',
'',
'    -- feed into json for return to client --',
'    ',
'        apex_plugin_util.print_json_http_header;',
'        ',
'        apex_json.open_object();',
'        apex_json.write(''r_ids'',     l_ids);     -- might want to apex_escape these',
'        apex_json.write(''r_crumbs'',  l_crumbs);  -- but make sure also escape separator',
'        apex_json.close_object();',
'',
'    end ajax_get_record;',
'        ',
'    procedure ajax_search_records(',
'        p_item   in            apex_plugin.t_item,',
'        p_plugin in            apex_plugin.t_plugin,',
'        p_param  in            apex_plugin.t_item_ajax_param,',
'        p_result in out nocopy apex_plugin.t_item_ajax_result)',
'    is',
'        l_filter            varchar2(256) := upper(apex_application.g_x02);',
'        l_first_row         number := nvl(to_number(apex_application.g_x03), 1);',
'        l_max_rows          number := 100;',
'        l_result            apex_plugin_util.t_column_value_list;',
'        l_returned_rows     number;',
'    begin',
'        apex_debug.enter(''PTRAIL.ajax_search_records'', ',
'            ''filter'',           l_filter,',
'            ''first_row'',        l_first_row',
'            );',
'        ',
'    -- fetch data --',
'',
'        l_result := apex_plugin_util.get_data (',
'            p_sql_statement     => p_item.lov_definition,',
'            p_min_columns       => 3,',
'            p_max_columns       => 3,',
'            p_component_name    => p_item.name,',
'            p_search_type       => case when length(l_filter) > 0 then apex_plugin_util.c_search_contains_ignore else null end,',
'            p_search_column_no  => 3,',
'            p_search_string     => l_filter,',
'            p_first_row         => l_first_row,',
'            p_max_rows          => l_max_rows + 1',
'        );',
'',
'        l_returned_rows := l_result(1).count;',
'        ',
'    -- feed into json for return to client --',
'    ',
'        apex_plugin_util.print_json_http_header;',
'        ',
'        apex_json.open_object();',
'        ',
'        apex_json.write(''rows_returned'', least(l_returned_rows, l_max_rows), true);',
'        apex_json.write(''first_row'', l_first_row, true);',
'        apex_json.write(''last_row'', l_first_row + least(l_returned_rows, l_max_rows) - 1, true);',
'        apex_json.write(''more_there'', case when l_returned_rows > l_max_rows then true else false end, true); ',
'        ',
'        apex_json.open_array(''rows'');',
'',
'        for i in 1..least(l_returned_rows, l_max_rows) loop',
'        ',
'            apex_json.open_object();',
'            ',
'            apex_json.write(''R'', l_result(1)(i), true);',
'            apex_json.write(''D'', ltrim(l_result(2)(i), '':''), true);   -- might want to apex_escape these',
'            apex_json.write(''S'', ltrim(l_result(3)(i), '':''), true);',
'',
'            apex_json.close_object();',
'',
'        end loop;',
'',
'        apex_json.close_all();',
'',
'    end ajax_search_records;',
'begin',
'    apex_debug.enter(''PTRAIL.ajax'', ',
'        ''action'',           apex_application.g_x01,',
'        ''name'',             p_item.name,',
'        ''lov_definition'',   p_item.lov_definition',
'        );',
'        ',
'    if l_action = ''GET_RECORD'' then',
'        ajax_get_record(p_item, p_plugin, p_param, p_result);',
'    elsif l_action = ''SEARCH_RECORDS'' then',
'        ajax_search_records(p_item, p_plugin, p_param, p_result);',
'    end if;',
'end ajax;',
''))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:ELEMENT:WIDTH:PLACEHOLDER:LOV:LOV_DISPLAY_NULL:CASCADING_LOV'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Plugin for showing parent trails ... this is a page item for displaying an entry in a table - but specifically for tables using a parent_id - and the page item includes the path down through the hierarchy to a record. This is familiar to us from brea'
||'dcrumbs and the display of paths for example at the top of the Microsoft File Explorer. And like with breadcrumbs, you can click on each element to navigate quickly up the hierarchy'
,p_version_identifier=>'1.1d'
,p_about_url=>'https://github.com/robertabarton/parent-trail'
,p_plugin_comment=>'Version produced from Apex 5.1.4'
,p_files_version=>45
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(10743371316435931)
,p_plugin_id=>wwv_flow_api.id(10741678269412622)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Crumb separator'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>' » '
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This could be " » "  or " > " or for a more file like appearance "/"<br>',
'If you use backslash, please escape if by specifying "\\"<br>',
'You can also specify html, for example to use the font apex with, say, <span aria-hidden="true" class="fa fa-arrow-right"></span><br>',
'The default is " » "'))
,p_help_text=>'Specify here the character(s) used to separate the elements in the path to a leaf in the record tree. This is only for display purposes: in the LOV query itself please always use a colon, i.e. ":"'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(10743662706447169)
,p_plugin_id=>wwv_flow_api.id(10741678269412622)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Show search button'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Set whether the user has access to the search button at the right end of the field to select a record from a popup list.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(10741834724412628)
,p_plugin_id=>wwv_flow_api.id(10741678269412622)
,p_name=>'LOV'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '242E77696467657428227261626172746F6E2E706172656E74547261696C222C7B6F7074696F6E733A7B6974656D4E616D653A22222C616A61784964656E7469666965723A22222C636173636164696E674974656D733A22222C706167654974656D7354';
wwv_flow_api.g_varchar2_table(2) := '6F5375626D69743A22222C736570617261746F723A2220C2BB20222C646973706C61795F6E756C6C3A224E222C6E756C6C5F746578743A22222C6E756C6C5F76616C75653A22222C73686F77536561726368427574746F6E3A2259222C696E76616C6964';
wwv_flow_api.g_varchar2_table(3) := '56616C75653A22496E76616C69642076616C7565222C7469746C653A22222C6E6F44617461466F756E643A22222C70726576696F75734C6162656C3A2250726576696F7573222C6E6578744C6162656C3A224E657874222C696E697469616C5F76616C75';
wwv_flow_api.g_varchar2_table(4) := '653A22222C696E697469616C5F6964733A22222C696E697469616C5F6372756D62733A22222C6D6F64616C57696474683A3530302C6D6F64616C4865696768743A3530302C6D6F64616C526F77733A3130307D2C5F6372656174653A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(5) := '28297B76617220653D746869733B617065782E64656275672E6C6F67282250545241494C222C225F437265617465222C652E6F7074696F6E732E6974656D4E616D652C652E6F7074696F6E73292C652E63757272656E745F76616C75653D22222C652E63';
wwv_flow_api.g_varchar2_table(6) := '757272656E745F6964733D22222C652E63757272656E745F6372756D62733D22222C652E6974656D243D24282223222B652E6F7074696F6E732E6974656D4E616D65292C652E6974656D446973706C6179243D24282223222B652E6F7074696F6E732E69';
wwv_flow_api.g_varchar2_table(7) := '74656D4E616D652B225F444953504C415922292C652E736561726368427574746F6E243D6E756C6C2C652E6469616C6F67243D6E756C6C2C652E6469616C6F6746696C74657254657874243D6E756C6C2C652E6469616C6F67526F7773243D6E756C6C2C';
wwv_flow_api.g_varchar2_table(8) := '652E6163746976655365617263685465726D3D22222C652E6F7074696F6E732E736570617261746F723D652E6F7074696F6E732E736570617261746F722E7265706C616365282F2671756F743B2F672C272227292C652E5F536574757041706578415049';
wwv_flow_api.g_varchar2_table(9) := '28292C652E4669656C6453657456616C756528652E6F7074696F6E732E696E697469616C5F76616C75652C652E6F7074696F6E732E696E697469616C5F6964732C652E6F7074696F6E732E696E697469616C5F6372756D62732C2130292C225922213D65';
wwv_flow_api.g_varchar2_table(10) := '2E6F7074696F6E732E73686F77536561726368427574746F6E7C7C652E6974656D242E70726F70282264697361626C656422297C7C28652E736561726368427574746F6E243D24282223222B652E6F7074696F6E732E6974656D4E616D652B225F425554';
wwv_flow_api.g_varchar2_table(11) := '544F4E22292C652E736561726368427574746F6E242E6F6E2822636C69636B222C66756E6374696F6E2874297B652E6469616C6F67243F28652E6163746976655365617263685465726D3D22222C652E6469616C6F6746696C74657254657874242E7661';
wwv_flow_api.g_varchar2_table(12) := '6C282222292C652E6469616C6F67526F7773242E68746D6C28223C62723E2229293A652E5F4469616C6F6743726561746528293B76617220693D242822626F647922292E776964746828293B242822626F647922292E77696474682869292E616464436C';
wwv_flow_api.g_varchar2_table(13) := '6173732822617065782D6E6F2D7363726F6C6C22292C652E6469616C6F67242E6469616C6F67287B7469746C653A652E6F7074696F6E732E7469746C652C6D6F64616C3A21302C6865696768743A652E6F7074696F6E732E6D6F64616C4865696768742C';
wwv_flow_api.g_varchar2_table(14) := '77696474683A652E6F7074696F6E732E6D6F64616C57696474682C6469616C6F67436C6173733A2275692D6469616C6F672D2D61706578222C636C6F73653A66756E6374696F6E28297B652E6469616C6F67526F7773242E68746D6C28223C62723E2229';
wwv_flow_api.g_varchar2_table(15) := '2C242822626F647922292E72656D6F7665436C6173732822617065782D6E6F2D7363726F6C6C22292E7769647468282222297D7D292C652E5F4469616C6F675365617263685265636F7264732831297D29292C652E6974656D446973706C6179242E6F6E';
wwv_flow_api.g_varchar2_table(16) := '2822636C69636B222C2261222C66756E6374696F6E2874297B76617220693D746869732E646174617365742E693B2D313D3D697C7C303D3D69262622223D3D652E63757272656E745F76616C75657C7C28303D3D693F652E4669656C6453657456616C75';
wwv_flow_api.g_varchar2_table(17) := '65286E756C6C2C6E756C6C2C6E756C6C293A652E4669656C6453657456616C756528652E63757272656E745F6964732E73706C697428223A22295B692D315D2C652E63757272656E745F6964732E73706C697428223A22292E736C69636528302C69292E';
wwv_flow_api.g_varchar2_table(18) := '6A6F696E28223A22292C652E63757272656E745F6372756D62732E73706C697428223A22292E736C69636528302C69292E6A6F696E28223A222929297D292C2428652E6F7074696F6E732E636173636164696E674974656D73292E6F6E28226368616E67';
wwv_flow_api.g_varchar2_table(19) := '65222C66756E6374696F6E28297B652E4669656C6453657456616C7565286E756C6C2C6E756C6C2C6E756C6C297D297D2C4669656C6453657456616C75653A66756E6374696F6E28652C742C692C613D2131297B766172206F3D746869733B617065782E';
wwv_flow_api.g_varchar2_table(20) := '64656275672E6C6F67282250545241494C222C224669656C6453657456616C7565222C2269643A222B6F2E6F7074696F6E732E6974656D4E616D652C226E65775F76616C75653A222B652C226E65775F6964733D222B742C226E65775F6372756D62733D';
wwv_flow_api.g_varchar2_table(21) := '222B69292C6F2E63757272656E745F76616C75653D657C7C22222C6F2E63757272656E745F6964733D743F742E7265706C616365282F5E3A2B7C3A2B242F672C2222293A22222C6F2E63757272656E745F6372756D62733D693F692E7265706C61636528';
wwv_flow_api.g_varchar2_table(22) := '2F5E3A2B7C3A2B242F672C2222293A22222C216F2E63757272656E745F76616C75657C7C6F2E63757272656E745F69647326266F2E63757272656E745F6372756D62733F6F2E5F4669656C64557064617465446973706C6179282161293A617065782E73';
wwv_flow_api.g_varchar2_table(23) := '65727665722E706C7567696E286F2E6F7074696F6E732E616A61784964656E7469666965722C7B7830313A224745545F5245434F5244222C7830323A6F2E63757272656E745F76616C75652C706167654974656D733A5B6F2E6F7074696F6E732E706167';
wwv_flow_api.g_varchar2_table(24) := '654974656D73546F5375626D69742C6F2E6F7074696F6E732E636173636164696E674974656D735D2E66696C7465722866756E6374696F6E2865297B72657475726E20657D292E6A6F696E28222C22297D2C7B64617461547970653A226A736F6E222C73';
wwv_flow_api.g_varchar2_table(25) := '7563636573733A66756E6374696F6E2865297B6F2E63757272656E745F6964733D652E725F6964732C6F2E63757272656E745F6372756D62733D652E725F6372756D62732C6F2E5F4669656C64557064617465446973706C6179282161292C617065782E';
wwv_flow_api.g_varchar2_table(26) := '64656275672E6C6F67282250545241494C222C224745545F5245434F524420737563636565646564222C2276616C75653A222B6F2E63757272656E745F76616C75652C226964733D222B6F2E63757272656E745F6964732C226372756D62733D222B6F2E';
wwv_flow_api.g_varchar2_table(27) := '63757272656E745F6372756D6273297D2C6572726F723A66756E6374696F6E28652C742C69297B617065782E64656275672E6C6F67282250545241494C222C224745545F5245434F5244206661696C656420666F7220726561736F6E3A222C652C742C69';
wwv_flow_api.g_varchar2_table(28) := '292C617065782E6D6573736167652E616C657274282241636365737320746F20612073696E676C65207265636F7264206661696C656420666F7220666F6C6C6F77696E6720726561736F6E3A20222B69297D7D297D2C5F4669656C6443616C6344697370';
wwv_flow_api.g_varchar2_table(29) := '6C617948544D4C3A66756E6374696F6E28297B69662822464C41475F494E56414C4944223D3D746869732E63757272656E745F6372756D62732972657475726E20617065782E6D6573736167652E73686F774572726F7273287B747970653A226572726F';
wwv_flow_api.g_varchar2_table(30) := '72222C6C6F636174696F6E3A22696E6C696E65222C706167654974656D3A746869732E6F7074696F6E732E6974656D4E616D652C6D6573736167653A746869732E6F7074696F6E732E696E76616C696456616C75652C756E736166653A21317D292C2222';
wwv_flow_api.g_varchar2_table(31) := '2B746869732E63757272656E745F76616C75653B617065782E6D6573736167652E636C6561724572726F727328746869732E6F7074696F6E732E6974656D4E616D65293B76617220653D22223B696628746869732E6974656D242E70726F702822646973';
wwv_flow_api.g_varchar2_table(32) := '61626C656422297C7C746869732E6974656D446973706C6179242E686173436C6173732822646973706C61795F6F6E6C7922292972657475726E2259223D3D746869732E6F7074696F6E732E646973706C61795F6E756C6C262628652B3D746869732E6F';
wwv_flow_api.g_varchar2_table(33) := '7074696F6E732E6E756C6C5F74657874292C746869732E63757272656E745F6372756D6273262628652E6C656E6774683E30262628652B3D746869732E6F7074696F6E732E736570617261746F72292C652B3D746869732E63757272656E745F6372756D';
wwv_flow_api.g_varchar2_table(34) := '62732E7265706C616365282F3A2F672C746869732E6F7074696F6E732E736570617261746F7229292C653B6966282259223D3D746869732E6F7074696F6E732E646973706C61795F6E756C6C262628652B3D273C6120646174612D693D22302220687265';
wwv_flow_api.g_varchar2_table(35) := '663D226A6176617363726970743A766F69642830293B223E272B746869732E6F7074696F6E732E6E756C6C5F746578742B223C2F613E22292C21746869732E63757272656E745F76616C75657C7C303D3D3D746869732E63757272656E745F76616C7565';
wwv_flow_api.g_varchar2_table(36) := '2E6C656E677468297B696628652972657475726E20653B76617220743D746869732E6974656D242E617474722822706C616365686F6C64657222293B72657475726E20766F696420303D3D3D743F22266E6273703B223A747D666F722876617220693D74';
wwv_flow_api.g_varchar2_table(37) := '6869732E63757272656E745F6372756D62732E73706C697428223A22292C613D28746869732E63757272656E745F6964732E73706C697428223A22292C30293B613C692E6C656E6774683B612B2B29652E6C656E6774683E30262628652B3D746869732E';
wwv_flow_api.g_varchar2_table(38) := '6F7074696F6E732E736570617261746F72292C652B3D273C6120646174612D693D22272B28613D3D692E6C656E6774682D313F2D313A612B31292B272220687265663D226A6176617363726970743A766F69642830293B223E272B695B615D2B223C2F61';
wwv_flow_api.g_varchar2_table(39) := '3E223B72657475726E20657D2C5F4669656C64557064617465446973706C61793A66756E6374696F6E28653D2131297B746869732E6974656D446973706C6179242E68746D6C28746869732E5F4669656C6443616C63446973706C617948544D4C282929';
wwv_flow_api.g_varchar2_table(40) := '2C652626746869732E6974656D242E7472696767657228226368616E676522297D2C5F5365747570417065784150493A66756E6374696F6E28297B76617220653D746869733B617065782E64656275672E6C6F67282250545241494C222C225F53657475';
wwv_flow_api.g_varchar2_table(41) := '7041706578415049222C2269643A222B652E6F7074696F6E732E6974656D4E616D65292C617065782E6974656D2E63726561746528652E6F7074696F6E732E6974656D4E616D652C7B656E61626C653A66756E6374696F6E28297B652E6974656D242E70';
wwv_flow_api.g_varchar2_table(42) := '726F70282264697361626C6564222C2131292C652E6974656D446973706C6179242E72656D6F7665436C6173732822617065785F64697361626C656422292C652E736561726368427574746F6E242626652E736561726368427574746F6E242E73686F77';
wwv_flow_api.g_varchar2_table(43) := '28292C652E5F4669656C64557064617465446973706C617928297D2C64697361626C653A66756E6374696F6E28297B652E6974656D242E70726F70282264697361626C6564222C2130292C652E6974656D446973706C6179242E616464436C6173732822';
wwv_flow_api.g_varchar2_table(44) := '617065785F64697361626C656422292C652E736561726368427574746F6E242626652E736561726368427574746F6E242E6869646528292C652E5F4669656C64557064617465446973706C617928297D2C697344697361626C65643A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(45) := '28297B72657475726E20652E6974656D242E70726F70282264697361626C656422297D2C73686F773A66756E6374696F6E28297B652E6974656D446973706C6179242E73686F7728292C652E736561726368427574746F6E242626652E73656172636842';
wwv_flow_api.g_varchar2_table(46) := '7574746F6E242E73686F7728297D2C686964653A66756E6374696F6E28297B652E6974656D446973706C6179242E6869646528292C652E736561726368427574746F6E242626652E736561726368427574746F6E242E6869646528297D2C73657456616C';
wwv_flow_api.g_varchar2_table(47) := '75653A66756E6374696F6E28742C692C61297B652E4669656C6453657456616C756528742C6E756C6C2C6E756C6C2C61297D2C67657456616C75653A66756E6374696F6E28297B72657475726E20652E63757272656E745F76616C75657C7C22227D2C67';
wwv_flow_api.g_varchar2_table(48) := '657456616C69646974793A66756E6374696F6E28297B76617220743D7B76616C69643A21307D3B72657475726E22464C41475F494E56414C4944223D3D652E63757272656E745F6372756D6273262628742E76616C69643D2131292C747D2C6765745661';
wwv_flow_api.g_varchar2_table(49) := '6C69646174696F6E4D6573736167653A66756E6374696F6E28297B72657475726E20652E6F7074696F6E732E696E76616C696456616C75657D2C69734368616E6765643A66756E6374696F6E28297B72657475726E20652E63757272656E745F76616C75';
wwv_flow_api.g_varchar2_table(50) := '65213D3D652E6F7074696F6E732E696E697469616C5F76616C75657D7D297D2C5F4469616C6F674372656174653A66756E6374696F6E28297B76617220653D746869733B617065782E64656275672E6C6F67282250545241494C222C225F4469616C6F67';
wwv_flow_api.g_varchar2_table(51) := '437265617465222C2269643A222B652E6F7074696F6E732E6974656D4E616D65292C652E6469616C6F67243D2428273C6469762069643D22272B652E6F7074696F6E732E6974656D4E616D652B275F4449414C4F4722207469746C653D22426173696320';
wwv_flow_api.g_varchar2_table(52) := '6469616C6F67223E3C64697620636C6173733D22742D506F7075704C4F562D616374696F6E7320742D466F726D2D2D6C6172676522207374796C653D22706F736974696F6E3A72656C6174697665223E3C696E7075742069643D22272B652E6F7074696F';
wwv_flow_api.g_varchar2_table(53) := '6E732E6974656D4E616D652B275F46494C5445525F544558542220747970653D227465787422206E616D653D22783032222073697A653D22323022206D61786C656E6774683D22313030222076616C75653D222220636C6173733D22617065782D697465';
wwv_flow_api.g_varchar2_table(54) := '6D2D7465787422207469746C653D22536561726368205465726D223E3C696E7075742069643D22272B652E6F7074696F6E732E6974656D4E616D652B275F46494C5445525F425554544F4E2220747970653D22627574746F6E22206E616D653D22222076';
wwv_flow_api.g_varchar2_table(55) := '616C75653D225365617263682220636C6173733D22742D427574746F6E20742D427574746F6E2D2D686F7420742D427574746F6E2D2D7061644C656674223E3C2F6469763E3C6469762069643D22272B652E6F7074696F6E732E6974656D4E616D652B27';
wwv_flow_api.g_varchar2_table(56) := '5F524F57532220636C6173733D22742D506F7075704C4F562D6C696E6B73223E3C2F6469763E3C2F6469763E27292E617070656E64546F2822626F647922292C652E6469616C6F6746696C74657254657874243D24282223222B652E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(57) := '6974656D4E616D652B225F46494C5445525F5445585422292C652E6469616C6F67526F7773243D24282223222B652E6F7074696F6E732E6974656D4E616D652B225F524F575322292C652E6469616C6F67526F7773242E637373287B6865696768743A34';
wwv_flow_api.g_varchar2_table(58) := '30302C6F766572666C6F773A226175746F227D292C652E6469616C6F67242E6F6E2822636C69636B222C2223222B652E6F7074696F6E732E6974656D4E616D652B225F46494C5445525F425554544F4E222C66756E6374696F6E2874297B652E61637469';
wwv_flow_api.g_varchar2_table(59) := '76655365617263685465726D3D652E6469616C6F6746696C74657254657874242E76616C28292C652E5F4469616C6F675365617263685265636F7264732831297D292C652E6469616C6F67242E6F6E28226B6579646F776E222C2223222B652E6F707469';
wwv_flow_api.g_varchar2_table(60) := '6F6E732E6974656D4E616D652B225F46494C5445525F54455854222C66756E6374696F6E2874297B31333D3D742E6B6579436F6465262628652E6163746976655365617263685465726D3D652E6469616C6F6746696C74657254657874242E76616C2829';
wwv_flow_api.g_varchar2_table(61) := '2C652E5F4469616C6F675365617263685265636F726473283129297D292C652E6469616C6F67242E6F6E2822636C69636B222C2261222C66756E6374696F6E2874297B652E6469616C6F67242E6469616C6F672822636C6F736522292C652E4669656C64';
wwv_flow_api.g_varchar2_table(62) := '53657456616C756528746869732E646174617365742E722C746869732E646174617365742E642C746869732E646174617365742E73297D292C652E6469616C6F67242E6F6E2822636C69636B222C2223222B652E6F7074696F6E732E6974656D4E616D65';
wwv_flow_api.g_varchar2_table(63) := '2B225F505245562C23222B652E6F7074696F6E732E6974656D4E616D652B225F4E455854222C66756E6374696F6E2874297B652E5F4469616C6F675365617263685265636F72647328746869732E646174617365742E726F77297D297D2C5F4469616C6F';
wwv_flow_api.g_varchar2_table(64) := '675365617263685265636F7264733A66756E6374696F6E2865297B76617220743D746869733B617065782E64656275672E6C6F67282250545241494C222C225F4469616C6F675365617263685265636F726473222C2269643A222B742E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(65) := '2E6974656D4E616D652C22705F66697273745F726F773A222B65293B76617220693D5B742E6F7074696F6E732E706167654974656D73546F5375626D69742C742E6F7074696F6E732E636173636164696E674974656D735D2E66696C7465722866756E63';
wwv_flow_api.g_varchar2_table(66) := '74696F6E2865297B72657475726E20657D292E6A6F696E28222C22293B617065782E7365727665722E706C7567696E28742E6F7074696F6E732E616A61784964656E7469666965722C7B7830313A225345415243485F5245434F524453222C7830323A74';
wwv_flow_api.g_varchar2_table(67) := '2E6163746976655365617263685465726D2C7830333A652C706167654974656D733A697D2C7B7461726765743A742E6974656D242C64617461547970653A226A736F6E222C6C6F6164696E67496E64696361746F723A2223222B742E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(68) := '6974656D4E616D652B225F4449414C4F47222C6C6F6164696E67496E64696361746F72506F736974696F6E3A2263656E7465726564222C737563636573733A66756E6374696F6E2865297B617065782E64656275672E6C6F67282250545241494C222C22';
wwv_flow_api.g_varchar2_table(69) := '5345415243485F5245434F52445320737563636565646564222C2269643A222B742E6F7074696F6E732E6974656D4E616D652C22726F77735F72657475726E65643A222B652E726F77735F72657475726E6564293B76617220693D22223B696628303D3D';
wwv_flow_api.g_varchar2_table(70) := '652E726F77735F72657475726E656429693D273C62723E3C64697620636C6173733D22742D506F7075704C4F562D706167696E6174696F6E223E272B742E6F7074696F6E732E6E6F44617461466F756E642B223C2F6469763E223B656C73657B76617220';
wwv_flow_api.g_varchar2_table(71) := '613D22223B2259223D3D742E6F7074696F6E732E646973706C61795F6E756C6C262628613D742E6F7074696F6E732E6E756C6C5F746578742B742E6F7074696F6E732E736570617261746F722C742E6163746976655365617263685465726D7C7C28692B';
wwv_flow_api.g_varchar2_table(72) := '3D273C62723E3C6120646174612D723D222220646174612D643D222220646174612D733D222220687265663D226A6176617363726970743A766F69642830293B223E272B742E6F7074696F6E732E6E756C6C5F746578742B223C2F613E2229292C652E72';
wwv_flow_api.g_varchar2_table(73) := '6F77732E666F72456163682866756E6374696F6E28652C6F297B692B3D273C62723E3C6120646174612D723D22272B652E522B272220646174612D643D22272B652E442B272220646174612D733D22272B652E532B272220687265663D226A6176617363';
wwv_flow_api.g_varchar2_table(74) := '726970743A766F69642830293B223E272B612B652E532E7265706C616365282F3A2F672C742E6F7074696F6E732E736570617261746F72292B223C2F613E227D292C2831213D652E66697273745F726F777C7C652E6D6F72655F74686572652926262869';
wwv_flow_api.g_varchar2_table(75) := '2B3D273C62723E3C64697620636C6173733D22742D506F7075704C4F562D706167696E6174696F6E223E526F7728732920272B652E66697273745F726F772B22202D20222B652E6C6173745F726F772B223C2F6469763E222C31213D652E66697273745F';
wwv_flow_api.g_varchar2_table(76) := '726F77262628692B3D273C696E7075742069643D22272B742E6F7074696F6E732E6974656D4E616D652B275F505245562220646174612D726F773D22272B28652E66697273745F726F772D742E6F7074696F6E732E6D6F64616C526F7773292B27222074';
wwv_flow_api.g_varchar2_table(77) := '7970653D22627574746F6E222076616C75653D22272B742E6F7074696F6E732E70726576696F75734C6162656C2B272220636C6173733D22742D427574746F6E20742D506F7075704C4F562D627574746F6E223B223E27292C652E6D6F72655F74686572';
wwv_flow_api.g_varchar2_table(78) := '65262628692B3D273C696E7075742069643D22272B742E6F7074696F6E732E6974656D4E616D652B275F4E4558542220646174612D726F773D22272B28652E6C6173745F726F772B31292B272220747970653D22627574746F6E222076616C75653D2227';
wwv_flow_api.g_varchar2_table(79) := '2B742E6F7074696F6E732E6E6578744C6162656C2B272220636C6173733D22742D427574746F6E20742D506F7075704C4F562D627574746F6E223B223E2729297D742E6469616C6F67526F7773242E68746D6C2869297D2C6572726F723A66756E637469';
wwv_flow_api.g_varchar2_table(80) := '6F6E28652C742C69297B617065782E64656275672E6C6F67282250545241494C222C225345415243485F5245434F524453206661696C656420666F7220726561736F6E3A222C652C742C69292C617065782E6D6573736167652E616C6572742822416363';
wwv_flow_api.g_varchar2_table(81) := '65737320746F207265636F726473206661696C656420666F7220666F6C6C6F77696E6720726561736F6E3A20222B69297D7D297D7D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(5485685761120820)
,p_plugin_id=>wwv_flow_api.id(10741678269412622)
,p_file_name=>'Client Side Code.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '242E77696467657428277261626172746F6E2E706172656E74547261696C272C207B0D0A0D0A202020206F7074696F6E733A207B0D0A20202020202020206974656D4E616D653A202020202020202020202027272C0D0A2020202020202020616A617849';
wwv_flow_api.g_varchar2_table(2) := '64656E7469666965723A202020202027272C0D0A2020202020202020636173636164696E674974656D733A202020202027272C0D0A2020202020202020706167654974656D73546F5375626D69743A202027272C0D0A2020202020202020736570617261';
wwv_flow_api.g_varchar2_table(3) := '746F723A202020202020202020202720C2BB20272C0D0A2020202020202020646973706C61795F6E756C6C3A20202020202020274E272C0D0A20202020202020206E756C6C5F746578743A2020202020202020202027272C0D0A20202020202020206E75';
wwv_flow_api.g_varchar2_table(4) := '6C6C5F76616C75653A20202020202020202027272C0D0A202020202020202073686F77536561726368427574746F6E3A2020202759272C0D0A2020202020202020696E76616C696456616C75653A2020202020202027496E76616C69642076616C756527';
wwv_flow_api.g_varchar2_table(5) := '2C0D0A20202020202020207469746C653A202020202020202020202020202027272C0D0A20202020202020206E6F44617461466F756E643A202020202020202027272C0D0A202020202020202070726576696F75734C6162656C3A202020202020275072';
wwv_flow_api.g_varchar2_table(6) := '6576696F7573272C0D0A20202020202020206E6578744C6162656C3A20202020202020202020274E657874272C0D0A0D0A2020202020202020696E697469616C5F76616C75653A20202020202027272C0D0A2020202020202020696E697469616C5F6964';
wwv_flow_api.g_varchar2_table(7) := '733A202020202020202027272C0D0A2020202020202020696E697469616C5F6372756D62733A202020202027272C0D0A20202020202020200D0A20202020202020206D6F64616C57696474683A2020202020202020203530302C202020202F2F20617065';
wwv_flow_api.g_varchar2_table(8) := '7820736964652061747472696275746573207374696C6C20746F2062652073657420757020666F72207468657365206F7074696F6E732C20696E20696E746572696D206966206E656564656420706C6561736520736574206F6E20636C69656E74207369';
wwv_flow_api.g_varchar2_table(9) := '64650D0A20202020202020206D6F64616C4865696768743A20202020202020203530302C0D0A20202020202020206D6F64616C526F77733A202020202020202020203130300D0A202020207D2C0D0A0D0A2F2F202D2D2D2D2D2D2D2D205F637265617465';
wwv_flow_api.g_varchar2_table(10) := '202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D2D2D2D2D2D2D2D206A717565727920776964676574206372656174696F';
wwv_flow_api.g_varchar2_table(11) := '6E202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2020200D0A202020205F6372656174653A2066756E6374696F6E202829207B202020202F2F2070736575646F207075';
wwv_flow_api.g_varchar2_table(12) := '626C69630D0A20202020202020207661722073656C66203D20746869730D0A0D0A2020202020202020617065782E64656275672E6C6F67282750545241494C272C20275F437265617465272C2073656C662E6F7074696F6E732E6974656D4E616D652C20';
wwv_flow_api.g_varchar2_table(13) := '73656C662E6F7074696F6E73290D0A0D0A202020202F2F2070757420696E7374616E6365207370656369666963207661726961626C6573206F6E206D61700D0A0D0A202020202020202073656C662E63757272656E745F76616C75652020202020203D20';
wwv_flow_api.g_varchar2_table(14) := '27270D0A202020202020202073656C662E63757272656E745F69647320202020202020203D2027270D0A202020202020202073656C662E63757272656E745F6372756D627320202020203D2027270D0A0D0A202020202020202073656C662E6974656D24';
wwv_flow_api.g_varchar2_table(15) := '20202020202020202020202020203D202428272327202B2073656C662E6F7074696F6E732E6974656D4E616D65292020202020200D0A202020202020202073656C662E6974656D446973706C617924202020202020203D202428272327202B2073656C66';
wwv_flow_api.g_varchar2_table(16) := '2E6F7074696F6E732E6974656D4E616D65202B20275F444953504C415927290D0A202020202020202073656C662E736561726368427574746F6E242020202020203D206E756C6C0D0A20202020202020200D0A202020202020202073656C662E6469616C';
wwv_flow_api.g_varchar2_table(17) := '6F67242020202020202020202020203D206E756C6C0D0A202020202020202073656C662E6469616C6F6746696C746572546578742420203D206E756C6C0D0A202020202020202073656C662E6469616C6F67526F77732420202020202020203D206E756C';
wwv_flow_api.g_varchar2_table(18) := '6C0D0A20202020202020200D0A202020202020202073656C662E6163746976655365617263685465726D2020203D2027270D0A0D0A202020202F2F2070757420696E76657274656420636F6D6D6173206261636B20696E20657363617065642073657061';
wwv_flow_api.g_varchar2_table(19) := '7261746F720D0A202020200D0A202020202020202073656C662E6F7074696F6E732E736570617261746F72203D2073656C662E6F7074696F6E732E736570617261746F722E7265706C616365282F2671756F743B2F672C20272227290D0A202020202020';
wwv_flow_api.g_varchar2_table(20) := '20200D0A202020202F2F20736574207570206974656D20696E20617065780D0A202020200D0A202020202020202073656C662E5F53657475704170657841504928290D0A20202020202020200D0A202020202F2F207365742075702063757272656E7420';
wwv_flow_api.g_varchar2_table(21) := '6261736564206F6E20696E697469616C0D0A202020200D0A202020202020202073656C662E4669656C6453657456616C75652873656C662E6F7074696F6E732E696E697469616C5F76616C75652C2073656C662E6F7074696F6E732E696E697469616C5F';
wwv_flow_api.g_varchar2_table(22) := '6964732C2073656C662E6F7074696F6E732E696E697469616C5F6372756D62732C2074727565290D0A0D0A202020202F2F207365742075702073656172636820616E64206163636F6D70616E79696E67206469616C6F670D0A20202020202020200D0A20';
wwv_flow_api.g_varchar2_table(23) := '202020202020206966202873656C662E6F7074696F6E732E73686F77536561726368427574746F6E203D3D20275927202626202173656C662E6974656D242E70726F70282764697361626C6564272929207B0D0A2020202020202020202020200D0A2020';
wwv_flow_api.g_varchar2_table(24) := '2020202020202020202073656C662E736561726368427574746F6E242020203D202428272327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F425554544F4E27290D0A20202020202020200D0A20202020202020202020202073';
wwv_flow_api.g_varchar2_table(25) := '656C662E736561726368427574746F6E242E6F6E2827636C69636B272C2066756E6374696F6E20286529207B0D0A20202020202020202020202020202020696620282173656C662E6469616C6F672429207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(26) := '2020202073656C662E5F4469616C6F6743726561746528290D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C7365207B0D0A202020202020202020202020202020202020202073656C662E616374697665';
wwv_flow_api.g_varchar2_table(27) := '5365617263685465726D203D2027270D0A202020202020202020202020202020202020202073656C662E6469616C6F6746696C74657254657874242E76616C282727290D0A202020202020202020202020202020202020202073656C662E6469616C6F67';
wwv_flow_api.g_varchar2_table(28) := '526F7773242E68746D6C28273C62723E27290D0A202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020766172206C5F7769647468203D20242827626F647927292E776964746828290D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(29) := '202020202020242827626F647927292E7769647468286C5F7769647468292E616464436C6173732827617065782D6E6F2D7363726F6C6C27292020202020202020202F2F20626C6F636B206D61696E2070616765207363726F6C6C696E672C2074616B65';
wwv_flow_api.g_varchar2_table(30) := '206361726520776974682073657175656E63650D0A202020202020202020202020202020200D0A2020202020202020202020202020202073656C662E6469616C6F67242E6469616C6F67287B0D0A20202020202020202020202020202020202020207469';
wwv_flow_api.g_varchar2_table(31) := '746C653A2073656C662E6F7074696F6E732E7469746C652C0D0A20202020202020202020202020202020202020206D6F64616C3A20747275652C0D0A20202020202020202020202020202020202020206865696768743A2073656C662E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(32) := '2E6D6F64616C4865696768742C0D0A202020202020202020202020202020202020202077696474683A2073656C662E6F7074696F6E732E6D6F64616C57696474682C0D0A20202020202020202020202020202020202020206469616C6F67436C6173733A';
wwv_flow_api.g_varchar2_table(33) := '202775692D6469616C6F672D2D61706578272C0D0A2020202020202020202020202020202020202020636C6F73653A2066756E6374696F6E2829207B0D0A20202020202020202020202020202020202020202020202073656C662E6469616C6F67526F77';
wwv_flow_api.g_varchar2_table(34) := '73242E68746D6C28273C62723E27290D0A202020202020202020202020202020202020202020202020242827626F647927292E72656D6F7665436C6173732827617065782D6E6F2D7363726F6C6C27292E776964746828272729202020202F2F2072656D';
wwv_flow_api.g_varchar2_table(35) := '6F766520626C6F636B206F6E206D61696E2070616765207363726F6C6C696E670D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D290D0A2020202020202020202020202020202073656C662E5F44';
wwv_flow_api.g_varchar2_table(36) := '69616C6F675365617263685265636F7264732831290D0A2020202020202020202020207D290D0A20202020202020207D0D0A20202020202020200D0A202020202F2F20736574207570206576656E742068616E646C65727320666F7220636C69636B696E';
wwv_flow_api.g_varchar2_table(37) := '67206F6E206C696E6B7320616E64206368616E67657320746F206361736361646564206974656D730D0A20202020202020200D0A202020202020202073656C662E6974656D446973706C6179242E6F6E2827636C69636B272C202761272C2066756E6374';
wwv_flow_api.g_varchar2_table(38) := '696F6E286529207B0D0A0D0A202020202020202020202020766172206920203D20746869732E646174617365742E690D0A2020202020202020202020206966202869203D3D202D31207C7C202869203D3D20302026262073656C662E63757272656E745F';
wwv_flow_api.g_varchar2_table(39) := '76616C7565203D3D2027272929200D0A2020202020202020202020202020202072657475726E3B0D0A2020202020202020202020200D0A2020202020202020202020206966202869203D3D2030290D0A2020202020202020202020202020202073656C66';
wwv_flow_api.g_varchar2_table(40) := '2E4669656C6453657456616C7565286E756C6C2C206E756C6C2C206E756C6C293B0D0A202020202020202020202020656C73650D0A2020202020202020202020202020202073656C662E4669656C6453657456616C75652873656C662E63757272656E74';
wwv_flow_api.g_varchar2_table(41) := '5F6964732E73706C697428273A27295B69202D20315D2C2073656C662E63757272656E745F6964732E73706C697428273A27292E736C69636528302C2069292E6A6F696E28273A27292C2073656C662E63757272656E745F6372756D62732E73706C6974';
wwv_flow_api.g_varchar2_table(42) := '28273A27292E736C69636528302C2069292E6A6F696E28273A2729293B0D0A20202020202020207D290D0A20202020202020200D0A2020202020202020242873656C662E6F7074696F6E732E636173636164696E674974656D73292E6F6E28276368616E';
wwv_flow_api.g_varchar2_table(43) := '6765272C2066756E6374696F6E202829207B2020202020202020202020200D0A20202020202020202020202073656C662E4669656C6453657456616C7565286E756C6C2C206E756C6C2C206E756C6C290D0A20202020202020207D290D0A202020207D2C';
wwv_flow_api.g_varchar2_table(44) := '0D0A202020200D0A2F2F202D2D2D2D2D2D2D2D204669656C6453657456616C7565202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D';
wwv_flow_api.g_varchar2_table(45) := '2D2D2D2D2D2D2D20536F6D657468696E67206368616E67656420616E64207765206E65656420746F206665746368206461746120616E64207468656E2075706461746520646973706C6179202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(46) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020204669656C6453657456616C75653A2066756E6374696F6E2028705F6E65775F76616C75652C20705F6E65775F6964732C20705F6E65775F6372756D62732C20705F7375707072657373';
wwv_flow_api.g_varchar2_table(47) := '5F6368616E6765203D2066616C736529207B2020202F2F207075626C69630D0A20202020202020207661722073656C66203D20746869730D0A20202020202020200D0A2020202020202020617065782E64656275672E6C6F67282750545241494C272C20';
wwv_flow_api.g_varchar2_table(48) := '274669656C6453657456616C7565272C202769643A27202B2073656C662E6F7074696F6E732E6974656D4E616D652C20276E65775F76616C75653A27202B20705F6E65775F76616C75652C20276E65775F6964733D27202B20705F6E65775F6964732C20';
wwv_flow_api.g_varchar2_table(49) := '276E65775F6372756D62733D27202B20705F6E65775F6372756D6273290D0A20202020202020200D0A202020202020202073656C662E63757272656E745F76616C756520203D20705F6E65775F76616C756520203F20705F6E65775F76616C7565202020';
wwv_flow_api.g_varchar2_table(50) := '20202020202020202020202020202020202020202020203A2027270D0A202020202020202073656C662E63757272656E745F696473202020203D20705F6E65775F696473202020203F20705F6E65775F6964732E7265706C616365282F5E3A2B7C3A2B24';
wwv_flow_api.g_varchar2_table(51) := '2F672C20222229202020203A20272720202020202F2F207472696D206C656164696E6720616E6420747261696C696E6720636F6C6F6E730D0A202020202020202073656C662E63757272656E745F6372756D6273203D20705F6E65775F6372756D627320';
wwv_flow_api.g_varchar2_table(52) := '3F20705F6E65775F6372756D62732E7265706C616365282F5E3A2B7C3A2B242F672C20222229203A2027270D0A20202020202020200D0A2020202020202020696620282173656C662E63757272656E745F76616C7565207C7C202873656C662E63757272';
wwv_flow_api.g_varchar2_table(53) := '656E745F6964732026262073656C662E63757272656E745F6372756D62732929207B0D0A20202020202020202020202073656C662E5F4669656C64557064617465446973706C61792821705F73757070726573735F6368616E6765290D0A202020202020';
wwv_flow_api.g_varchar2_table(54) := '20207D0D0A2020202020202020656C7365207B0D0A202020202020202020202020617065782E7365727665722E706C7567696E280D0A2020202020202020202020202020202073656C662E6F7074696F6E732E616A61784964656E7469666965722C200D';
wwv_flow_api.g_varchar2_table(55) := '0A202020202020202020202020202020207B0D0A20202020202020202020202020202020202020207830313A20274745545F5245434F5244272C0D0A20202020202020202020202020202020202020207830323A2073656C662E63757272656E745F7661';
wwv_flow_api.g_varchar2_table(56) := '6C75652C0D0A2020202020202020202020202020202020202020706167654974656D733A205B73656C662E6F7074696F6E732E706167654974656D73546F5375626D69742C2073656C662E6F7074696F6E732E636173636164696E674974656D735D2E66';
wwv_flow_api.g_varchar2_table(57) := '696C7465722866756E6374696F6E202873656C6563746F7229207B72657475726E202873656C6563746F72297D292E6A6F696E28272C27290D0A202020202020202020202020202020207D2C200D0A202020202020202020202020202020207B0D0A2020';
wwv_flow_api.g_varchar2_table(58) := '20202020202020202020202020202020202064617461547970653A20276A736F6E272C0D0A2020202020202020202020202020202020202020737563636573733A2066756E6374696F6E2028704461746129207B20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(59) := '202020200D0A20202020202020202020202020202020202020202020202073656C662E63757272656E745F696473202020203D2070446174612E725F6964730D0A20202020202020202020202020202020202020202020202073656C662E63757272656E';
wwv_flow_api.g_varchar2_table(60) := '745F6372756D6273203D2070446174612E725F6372756D62730D0A20202020202020202020202020202020202020202020202073656C662E5F4669656C64557064617465446973706C61792821705F73757070726573735F6368616E6765290D0A202020';
wwv_flow_api.g_varchar2_table(61) := '2020202020202020202020202020202020202020200D0A202020202020202020202020202020202020202020202020617065782E64656275672E6C6F67282750545241494C272C20274745545F5245434F524420737563636565646564272C202776616C';
wwv_flow_api.g_varchar2_table(62) := '75653A27202B2073656C662E63757272656E745F76616C75652C20276964733D27202B2073656C662E63757272656E745F6964732C20276372756D62733D27202B2073656C662E63757272656E745F6372756D6273290D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(63) := '20202020202020207D2C0D0A20202020202020202020202020202020202020206572726F723A2066756E6374696F6E2028705F5848522C20705F746578742C20705F6572726F7229207B0D0A202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(64) := '617065782E64656275672E6C6F67282750545241494C272C20274745545F5245434F5244206661696C656420666F7220726561736F6E3A272C20705F5848522C20705F746578742C20705F6572726F72290D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(65) := '20202020202020617065782E6D6573736167652E616C657274282741636365737320746F20612073696E676C65207265636F7264206661696C656420666F7220666F6C6C6F77696E6720726561736F6E3A2027202B20705F6572726F72290D0A20202020';
wwv_flow_api.g_varchar2_table(66) := '202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A202020202020202020202020290D0A20202020202020207D0D0A202020207D2C0D0A0D0A2F2F202D2D2D2D2D2D2D2D205F4669656C6443616C6344697370';
wwv_flow_api.g_varchar2_table(67) := '6C617948544D4C202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D2D2D2D2D2D2D2D20576F726B206F75742068746D6C20666F7220';
wwv_flow_api.g_varchar2_table(68) := '61206365727461696E2076616C75652D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020205F4669656C6443616C63446973706C6179';
wwv_flow_api.g_varchar2_table(69) := '48544D4C3A2066756E6374696F6E202829207B202020202020202F2F20707269766174650D0A20202020202020207661722073656C66203D20746869730D0A20202020202020200D0A20202020202020206966202873656C662E63757272656E745F6372';
wwv_flow_api.g_varchar2_table(70) := '756D6273203D3D2027464C41475F494E56414C49442729207B0D0A2020202020202020202020200D0A202020202020202020202020617065782E6D6573736167652E73686F774572726F7273280D0A202020202020202020202020202020207B0D0A2020';
wwv_flow_api.g_varchar2_table(71) := '202020202020202020202020202020202020747970653A20202020202020226572726F72222C0D0A20202020202020202020202020202020202020206C6F636174696F6E3A20202022696E6C696E65222C0D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(72) := '202020706167654974656D3A20202073656C662E6F7074696F6E732E6974656D4E616D652C0D0A20202020202020202020202020202020202020206D6573736167653A2020202073656C662E6F7074696F6E732E696E76616C696456616C75652C0D0A20';
wwv_flow_api.g_varchar2_table(73) := '20202020202020202020202020202020202020756E736166653A202020202066616C73650D0A202020202020202020202020202020207D0D0A202020202020202020202020293B200D0A2020202020202020202020200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(74) := '72657475726E202727202B2073656C662E63757272656E745F76616C75650D0A20202020202020207D0D0A20202020202020200D0A2020202020202020617065782E6D6573736167652E636C6561724572726F72732873656C662E6F7074696F6E732E69';
wwv_flow_api.g_varchar2_table(75) := '74656D4E616D65293B0D0A202020202020202020200D0A202020202020202076617220646973706C61795F68746D6C203D202727202020202020200D0A20202020202020206966202873656C662E6974656D242E70726F70282764697361626C65642729';
wwv_flow_api.g_varchar2_table(76) := '207C7C2073656C662E6974656D446973706C6179242E686173436C6173732827646973706C61795F6F6E6C79272929207B20202F2F206569746865722064697361626C6564206F7220726561646F6E6C79206F72207072696E74657220667269656E646C';
wwv_flow_api.g_varchar2_table(77) := '790D0A2020202020202020202020206966202873656C662E6F7074696F6E732E646973706C61795F6E756C6C203D3D2027592729207B0D0A20202020202020202020202020202020646973706C61795F68746D6C202B3D2073656C662E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(78) := '2E6E756C6C5F746578740D0A2020202020202020202020207D0D0A2020202020202020202020206966202873656C662E63757272656E745F6372756D627329207B0D0A2020202020202020202020202020202069662028646973706C61795F68746D6C2E';
wwv_flow_api.g_varchar2_table(79) := '6C656E677468203E203029207B0D0A2020202020202020202020202020202020202020646973706C61795F68746D6C202B3D2073656C662E6F7074696F6E732E736570617261746F720D0A202020202020202020202020202020207D0D0A202020202020';
wwv_flow_api.g_varchar2_table(80) := '20202020202020202020646973706C61795F68746D6C202B3D2073656C662E63757272656E745F6372756D62732E7265706C616365282F3A2F672C2073656C662E6F7074696F6E732E736570617261746F72290D0A2020202020202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(81) := '20202020202020202020202072657475726E20646973706C61795F68746D6C20202020202020200D0A20202020202020207D0D0A202020200D0A20202020202020206966202873656C662E6F7074696F6E732E646973706C61795F6E756C6C203D3D2027';
wwv_flow_api.g_varchar2_table(82) := '592729207B0D0A202020202020202020202020646973706C61795F68746D6C202B3D20273C6120646174612D693D22302220687265663D226A6176617363726970743A766F69642830293B223E27202B2073656C662E6F7074696F6E732E6E756C6C5F74';
wwv_flow_api.g_varchar2_table(83) := '657874202B20273C2F613E270D0A20202020202020207D0D0A0D0A2020202020202020696620282173656C662E63757272656E745F76616C7565207C7C2073656C662E63757272656E745F76616C75652E6C656E677468203D3D3D203029207B0D0A2020';
wwv_flow_api.g_varchar2_table(84) := '2020202020202020202069662028646973706C61795F68746D6C290D0A2020202020202020202020202020202072657475726E20646973706C61795F68746D6C3B0D0A2020202020202020202020200D0A202020202020202020202020766172206C5F70';
wwv_flow_api.g_varchar2_table(85) := '6C616365686F6C646572203D2073656C662E6974656D242E617474722827706C616365686F6C64657227290D0A20202020202020202020202072657475726E206C5F706C616365686F6C646572203D3D3D20756E646566696E6564203F2027266E627370';
wwv_flow_api.g_varchar2_table(86) := '3B27203A206C5F706C616365686F6C646572202020202F2F20486569676874206D6973626568617665206966207370616E20746F74616C6C7920656D70747920202020200D0A20202020202020207D0D0A20202020202020200D0A202020202020202076';
wwv_flow_api.g_varchar2_table(87) := '6172206372756D6273203D2073656C662E63757272656E745F6372756D62732E73706C697428273A27290D0A202020202020202076617220696473202020203D2073656C662E63757272656E745F6964732E73706C697428273A27290D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(88) := '20202020666F7220287661722069203D20303B2069203C206372756D62732E6C656E6774683B20692B2B29207B0D0A20202020202020202020202069662028646973706C61795F68746D6C2E6C656E677468203E203029207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(89) := '20202020202020646973706C61795F68746D6C202B3D2073656C662E6F7074696F6E732E736570617261746F720D0A2020202020202020202020207D0D0A202020202020202020202020646973706C61795F68746D6C202B3D20273C6120646174612D69';
wwv_flow_api.g_varchar2_table(90) := '3D2227202B202869203D3D206372756D62732E6C656E677468202D31203F202D31203A2069202B203129202B20272220687265663D226A6176617363726970743A766F69642830293B223E27202B206372756D62735B695D202B20273C2F613E270D0A20';
wwv_flow_api.g_varchar2_table(91) := '202020202020207D0D0A0D0A202020202020202072657475726E20646973706C61795F68746D6C0D0A202020207D2C0D0A2020200D0A2F2F202D2D2D2D2D2D2D2D205F4669656C64557064617465446973706C6179202D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(92) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D2D2D2D2D2D2D2D2075706461746520646973706C61796564206461746120616E642074726967676572206368616E6765';
wwv_flow_api.g_varchar2_table(93) := '206966206E6565646564202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020205F4669656C64557064617465446973706C61793A2066756E6374696F6E2028705F7472696767';
wwv_flow_api.g_varchar2_table(94) := '65725F6368616E6765203D2066616C736529207B20202F2F20707269766174650D0A20202020202020207661722073656C66203D20746869730D0A20202020202020200D0A202020202020202073656C662E6974656D446973706C6179242E68746D6C28';
wwv_flow_api.g_varchar2_table(95) := '73656C662E5F4669656C6443616C63446973706C617948544D4C2829290D0A20202020202020200D0A202020202020202069662028705F747269676765725F6368616E6765290D0A20202020202020202020202073656C662E6974656D242E7472696767';
wwv_flow_api.g_varchar2_table(96) := '657228276368616E676527293B0D0A202020207D2C0D0A202020200D0A2F2F202D2D2D2D2D2D2D2D205F536574757041706578415049202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(97) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D2D2D2D2D2D2D2D20476574206C696E6B20696E746F206170657820736F72746564202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A';
wwv_flow_api.g_varchar2_table(98) := '0D0A202020205F5365747570417065784150493A2066756E6374696F6E202829207B20202020202F2F20707269766174650D0A20202020202020207661722073656C66203D20746869730D0A0D0A2020202020202020617065782E64656275672E6C6F67';
wwv_flow_api.g_varchar2_table(99) := '282750545241494C272C20275F536574757041706578415049272C202769643A27202B2073656C662E6F7074696F6E732E6974656D4E616D65290D0A0D0A2020202020202020617065782E6974656D2E6372656174652873656C662E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(100) := '6974656D4E616D652C207B2020202020202020202020200D0A202020202020202020202020656E61626C653A2066756E6374696F6E202829207B2020202020202020202020200D0A2020202020202020202020202020202073656C662E6974656D242E70';
wwv_flow_api.g_varchar2_table(101) := '726F70282764697361626C6564272C2066616C7365290D0A2020202020202020202020202020202073656C662E6974656D446973706C6179242E72656D6F7665436C6173732827617065785F64697361626C656427290D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(102) := '202020206966202873656C662E736561726368427574746F6E2429207B73656C662E736561726368427574746F6E242E73686F7728297D0D0A2020202020202020202020202020202073656C662E5F4669656C64557064617465446973706C617928290D';
wwv_flow_api.g_varchar2_table(103) := '0A2020202020202020202020207D2C0D0A20202020202020202020202064697361626C653A2066756E6374696F6E202829207B0D0A2020202020202020202020202020202073656C662E6974656D242E70726F70282764697361626C6564272C20747275';
wwv_flow_api.g_varchar2_table(104) := '65290D0A2020202020202020202020202020202073656C662E6974656D446973706C6179242E616464436C6173732827617065785F64697361626C656427290D0A202020202020202020202020202020206966202873656C662E73656172636842757474';
wwv_flow_api.g_varchar2_table(105) := '6F6E2429207B73656C662E736561726368427574746F6E242E6869646528297D0D0A2020202020202020202020202020202073656C662E5F4669656C64557064617465446973706C617928290D0A2020202020202020202020207D2C0D0A202020202020';
wwv_flow_api.g_varchar2_table(106) := '202020202020697344697361626C65643A2066756E6374696F6E202829207B0D0A2020202020202020202020202020202072657475726E2073656C662E6974656D242E70726F70282764697361626C656427290D0A2020202020202020202020207D2C0D';
wwv_flow_api.g_varchar2_table(107) := '0A20202020202020202020202073686F773A2066756E6374696F6E202829207B0D0A2020202020202020202020202020202073656C662E6974656D446973706C6179242E73686F7728290D0A202020202020202020202020202020206966202873656C66';
wwv_flow_api.g_varchar2_table(108) := '2E736561726368427574746F6E2429207B73656C662E736561726368427574746F6E242E73686F7728297D0D0A2020202020202020202020207D2C0D0A202020202020202020202020686964653A2066756E6374696F6E202829207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(109) := '2020202020202020202073656C662E6974656D446973706C6179242E6869646528290D0A202020202020202020202020202020206966202873656C662E736561726368427574746F6E2429207B73656C662E736561726368427574746F6E242E68696465';
wwv_flow_api.g_varchar2_table(110) := '28297D0D0A2020202020202020202020207D2C0D0A20202020202020202020202073657456616C75653A2066756E6374696F6E20287056616C75652C2070446973706C617956616C75652C207053757070726573734368616E67654576656E7429207B0D';
wwv_flow_api.g_varchar2_table(111) := '0A2020202020202020202020202020202073656C662E4669656C6453657456616C7565287056616C75652C206E756C6C2C206E756C6C2C207053757070726573734368616E67654576656E74290D0A2020202020202020202020207D2C0D0A2020202020';
wwv_flow_api.g_varchar2_table(112) := '2020202020202067657456616C75653A2066756E6374696F6E202829207B0D0A2020202020202020202020202020202072657475726E2073656C662E63757272656E745F76616C7565207C7C2027270D0A2020202020202020202020207D2C0D0A202020';
wwv_flow_api.g_varchar2_table(113) := '20202020202020202067657456616C69646974793A2066756E6374696F6E2829207B0D0A20202020202020202020202020202020766172206C5F76616C6964697479203D207B2076616C69643A2074727565207D3B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(114) := '2020206966202873656C662E63757272656E745F6372756D6273203D3D2027464C41475F494E56414C494427290D0A20202020202020202020202020202020202020206C5F76616C69646974792E76616C6964203D2066616C73653B0D0A202020202020';
wwv_flow_api.g_varchar2_table(115) := '2020202020202020202072657475726E206C5F76616C69646974793B0D0A2020202020202020202020207D2C0D0A20202020202020202020202067657456616C69646174696F6E4D6573736167653A2066756E6374696F6E2829207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(116) := '2020202020202020202072657475726E2073656C662E6F7074696F6E732E696E76616C696456616C75650D0A2020202020202020202020207D2C0D0A20202020202020202020202069734368616E6765643A2066756E6374696F6E202829207B0D0A2020';
wwv_flow_api.g_varchar2_table(117) := '202020202020202020202020202072657475726E2073656C662E63757272656E745F76616C756520213D3D2073656C662E6F7074696F6E732E696E697469616C5F76616C75650D0A2020202020202020202020207D0D0A20202020202020207D290D0A20';
wwv_flow_api.g_varchar2_table(118) := '2020207D2C0D0A202020200D0A2F2F203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D206469616C6F672066756E6374696F6E73203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(119) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0D0A0D0A2F2F202D2D2D2D2D2D2D2D205F4469616C6F67437265617465202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(120) := '2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D2D2D2D2D2D2D2D2073657420757020706F707570206469616C6F67202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020205F4469';
wwv_flow_api.g_varchar2_table(121) := '616C6F674372656174653A2066756E6374696F6E202829207B20202F2F20707269766174650D0A20202020202020207661722073656C66203D20746869730D0A20202020202020200D0A2020202020202020617065782E64656275672E6C6F6728275054';
wwv_flow_api.g_varchar2_table(122) := '5241494C272C20275F4469616C6F67437265617465272C202769643A27202B2073656C662E6F7074696F6E732E6974656D4E616D65290D0A0D0A202020202F2F2073657420757020626173696320656C656D656E74730D0A202020200D0A202020202020';
wwv_flow_api.g_varchar2_table(123) := '202073656C662E6469616C6F6724203D2024280D0A202020202020202020202020273C6469762069643D2227202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F4449414C4F4722207469746C653D224261736963206469616C6F67';
wwv_flow_api.g_varchar2_table(124) := '223E27202B0D0A20202020202020202020202020202020273C64697620636C6173733D22742D506F7075704C4F562D616374696F6E7320742D466F726D2D2D6C6172676522207374796C653D22706F736974696F6E3A72656C6174697665223E27202B0D';
wwv_flow_api.g_varchar2_table(125) := '0A2020202020202020202020202020202020202020273C696E7075742069643D2227202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F46494C5445525F544558542220747970653D227465787422206E616D653D22783032222073';
wwv_flow_api.g_varchar2_table(126) := '697A653D22323022206D61786C656E6774683D22313030222076616C75653D222220636C6173733D22617065782D6974656D2D7465787422207469746C653D22536561726368205465726D223E27202B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(127) := '2020273C696E7075742069643D2227202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F46494C5445525F425554544F4E2220747970653D22627574746F6E22206E616D653D22222076616C75653D225365617263682220636C6173';
wwv_flow_api.g_varchar2_table(128) := '733D22742D427574746F6E20742D427574746F6E2D2D686F7420742D427574746F6E2D2D7061644C656674223E27202B0D0A20202020202020202020202020202020273C2F6469763E27202B202020202020200D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(129) := '20273C6469762069643D2227202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F524F57532220636C6173733D22742D506F7075704C4F562D6C696E6B73223E3C2F6469763E27202B200D0A202020202020202020202020273C2F64';
wwv_flow_api.g_varchar2_table(130) := '69763E270D0A202020202020202020202020292E617070656E64546F2827626F647927290D0A20202020202020200D0A202020202020202073656C662E6469616C6F6746696C74657254657874242020203D202428272327202B2073656C662E6F707469';
wwv_flow_api.g_varchar2_table(131) := '6F6E732E6974656D4E616D65202B20275F46494C5445525F5445585427290D0A202020202020202073656C662E6469616C6F67526F7773242020202020202020203D202428272327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B2027';
wwv_flow_api.g_varchar2_table(132) := '5F524F575327290D0A20202020202020200D0A202020202020202073656C662E6469616C6F67526F7773242E637373287B6865696768743A3430302C206F766572666C6F773A276175746F277D290D0A202020200D0A202020202F2F2061646420696E20';
wwv_flow_api.g_varchar2_table(133) := '6576656E742068616E646C657273202D207761746368206F7574206E6F7420657665727920656C656D656E74206D61792062652070726573656E740D0A202020200D0A202020202020202073656C662E6469616C6F67242E6F6E2827636C69636B272C20';
wwv_flow_api.g_varchar2_table(134) := '272327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F46494C5445525F425554544F4E272C2066756E6374696F6E20286529207B0D0A20202020202020202020202073656C662E6163746976655365617263685465726D203D20';
wwv_flow_api.g_varchar2_table(135) := '73656C662E6469616C6F6746696C74657254657874242E76616C28290D0A20202020202020202020202073656C662E5F4469616C6F675365617263685265636F7264732831290D0A20202020202020207D292020200D0A202020202020202073656C662E';
wwv_flow_api.g_varchar2_table(136) := '6469616C6F67242E6F6E28276B6579646F776E272C20272327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F46494C5445525F54455854272C2066756E6374696F6E20286529207B0D0A20202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(137) := '652E6B6579436F6465203D3D20313329207B200D0A2020202020202020202020202020202073656C662E6163746976655365617263685465726D203D2073656C662E6469616C6F6746696C74657254657874242E76616C28290D0A202020202020202020';
wwv_flow_api.g_varchar2_table(138) := '2020202020202073656C662E5F4469616C6F675365617263685265636F7264732831290D0A2020202020202020202020207D0D0A20202020202020207D292F2A20202020202020200D0A202020202020202073656C662E6469616C6F67242E6F6E28276B';
wwv_flow_api.g_varchar2_table(139) := '6579646F776E272C2074657874206669656C642073656172636820627574746F6E2C2066756E6374696F6E20286529207B0D0A20202020202020202020202069662028652E6B6579436F6465203D3D203333207C7C20652E6B6579436F6465203D3D2033';
wwv_flow_api.g_varchar2_table(140) := '3429207B20202F2F203333203D3E20506167652075702C203334203D3E205061676520646F776E0D0A2020202020202020202020202020202070617373206576656E74206F6E746F20636F6E74656E7420776865726520697420697320616C7265616479';
wwv_flow_api.g_varchar2_table(141) := '206265696E672070726F6365737365642070726F7065726C790D0A2020202020202020202020207D0D0A20202020202020207D292A2F202020202020202020200D0A202020202020202073656C662E6469616C6F67242E6F6E2827636C69636B272C2027';
wwv_flow_api.g_varchar2_table(142) := '61272C2066756E6374696F6E20286529207B0D0A20202020202020202020202073656C662E6469616C6F67242E6469616C6F672827636C6F736527290D0A20202020202020202020202073656C662E4669656C6453657456616C756528746869732E6461';
wwv_flow_api.g_varchar2_table(143) := '74617365742E722C20746869732E646174617365742E642C20746869732E646174617365742E73290D0A20202020202020207D2920200D0A20202020202020200D0A202020202020202073656C662E6469616C6F67242E6F6E2827636C69636B272C2027';
wwv_flow_api.g_varchar2_table(144) := '2327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F505245562C2327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F4E455854272C2066756E6374696F6E20286529207B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(145) := '202073656C662E5F4469616C6F675365617263685265636F72647328746869732E646174617365742E726F77290D0A20202020202020207D290D0A202020207D2C0D0A202020200D0A2F2F202D2D2D2D2D2D2D2D205F4469616C6F675365617263685265';
wwv_flow_api.g_varchar2_table(146) := '636F726473202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2F2F202D2D2D2D2D2D2D2D205472696767657220612073656172636820666F72';
wwv_flow_api.g_varchar2_table(147) := '206E65787420726F777320616E6420737469636B20726573756C747320696E746F2068726566206C697374202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A0D0A202020205F4469616C6F6753656172636852';
wwv_flow_api.g_varchar2_table(148) := '65636F7264733A2066756E6374696F6E2028705F66697273745F726F7729207B20202020202F2F20707269766174652020200D0A20202020202020207661722073656C66203D20746869730D0A2020202020200D0A2020202020202020617065782E6465';
wwv_flow_api.g_varchar2_table(149) := '6275672E6C6F67282750545241494C272C20275F4469616C6F675365617263685265636F726473272C202769643A27202B2073656C662E6F7074696F6E732E6974656D4E616D652C2027705F66697273745F726F773A27202B20705F66697273745F726F';
wwv_flow_api.g_varchar2_table(150) := '77290D0A0D0A2020202020202020766172206974656D735F6E6565646564203D205B73656C662E6F7074696F6E732E706167654974656D73546F5375626D69742C2073656C662E6F7074696F6E732E636173636164696E674974656D735D2E66696C7465';
wwv_flow_api.g_varchar2_table(151) := '722866756E6374696F6E202873656C6563746F7229207B72657475726E202873656C6563746F72297D292E6A6F696E28272C272920202020202020200D0A0D0A2020202020202020617065782E7365727665722E706C7567696E280D0A20202020202020';
wwv_flow_api.g_varchar2_table(152) := '202020202073656C662E6F7074696F6E732E616A61784964656E7469666965722C200D0A2020202020202020202020207B0D0A202020202020202020202020202020207830313A20202020202020275345415243485F5245434F524453272C0D0A202020';
wwv_flow_api.g_varchar2_table(153) := '202020202020202020202020207830323A2020202020202073656C662E6163746976655365617263685465726D2C0D0A202020202020202020202020202020207830333A20202020202020705F66697273745F726F772C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(154) := '2020202020706167654974656D733A206974656D735F6E65656465640D0A2020202020202020202020207D2C200D0A2020202020202020202020207B0D0A202020202020202020202020202020207461726765743A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(155) := '2020202073656C662E6974656D242C0D0A2020202020202020202020202020202064617461547970653A2020202020202020202020202020202020276A736F6E272C0D0A202020202020202020202020202020206C6F6164696E67496E64696361746F72';
wwv_flow_api.g_varchar2_table(156) := '3A202020202020202020272327202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F4449414C4F47272C0D0A202020202020202020202020202020206C6F6164696E67496E64696361746F72506F736974696F6E3A202763656E7465';
wwv_flow_api.g_varchar2_table(157) := '726564272C0D0A20202020202020202020202020202020737563636573733A2066756E6374696F6E2028704461746129207B0D0A20202020202020202020202020202020202020200D0A2020202020202020202020202020202020202020617065782E64';
wwv_flow_api.g_varchar2_table(158) := '656275672E6C6F67282750545241494C272C20275345415243485F5245434F52445320737563636565646564272C202769643A27202B2073656C662E6F7074696F6E732E6974656D4E616D652C2027726F77735F72657475726E65643A27202B20704461';
wwv_flow_api.g_varchar2_table(159) := '74612E726F77735F72657475726E6564290D0A20202020202020202020202020202020202020200D0A202020202020202020202020202020202020202076617220646973706C61795F68746D6C203D2027273B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(160) := '20202020200D0A20202020202020202020202020202020202020206966202870446174612E726F77735F72657475726E6564203D3D203029207B2020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(161) := '2020202020202020646973706C61795F68746D6C203D20273C62723E3C64697620636C6173733D22742D506F7075704C4F562D706167696E6174696F6E223E27202B2073656C662E6F7074696F6E732E6E6F44617461466F756E64202B20273C2F646976';
wwv_flow_api.g_varchar2_table(162) := '3E2720202F2F20636F756C6420686176652070726F70657220636C617373206F6E20746869730D0A20202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020656C7365207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(163) := '202020202020202020202020202020766172206C5F6E756C6C5F74657874203D2027270D0A2020202020202020202020202020202020202020202020206966202873656C662E6F7074696F6E732E646973706C61795F6E756C6C203D3D2027592729207B';
wwv_flow_api.g_varchar2_table(164) := '0D0A202020202020202020202020202020202020202020202020202020206C5F6E756C6C5F74657874203D2073656C662E6F7074696F6E732E6E756C6C5F74657874202B2073656C662E6F7074696F6E732E736570617261746F720D0A20202020202020';
wwv_flow_api.g_varchar2_table(165) := '202020202020202020202020202020202020202020696620282173656C662E6163746976655365617263685465726D29207B0D0A2020202020202020202020202020202020202020202020202020202020202020646973706C61795F68746D6C202B3D20';
wwv_flow_api.g_varchar2_table(166) := '273C62723E3C6120646174612D723D222220646174612D643D222220646174612D733D222220687265663D226A6176617363726970743A766F69642830293B223E27202B2073656C662E6F7074696F6E732E6E756C6C5F74657874202B20273C2F613E27';
wwv_flow_api.g_varchar2_table(167) := '0D0A202020202020202020202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020202020202020202070446174612E726F77732E666F72';
wwv_flow_api.g_varchar2_table(168) := '456163682866756E6374696F6E2028722C20696E64657829207B0D0A20202020202020202020202020202020202020202020202020202020646973706C61795F68746D6C202B3D20273C62723E3C6120646174612D723D2227202B20725B2752275D202B';
wwv_flow_api.g_varchar2_table(169) := '20272220646174612D643D2227202B20725B2744275D202B20272220646174612D733D2227202B20725B2753275D202B20272220687265663D226A6176617363726970743A766F69642830293B223E27202B206C5F6E756C6C5F74657874202B20725B27';
wwv_flow_api.g_varchar2_table(170) := '53275D2E7265706C616365282F3A2F672C2073656C662E6F7074696F6E732E736570617261746F7229202B20273C2F613E270D0A202020202020202020202020202020202020202020202020202020207D290D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(171) := '2020202020202020202020200D0A2020202020202020202020202020202020202020202020206966202870446174612E66697273745F726F7720213D2031207C7C2070446174612E6D6F72655F74686572652029207B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(172) := '20202020202020202020202020202020646973706C61795F68746D6C202B3D20273C62723E3C64697620636C6173733D22742D506F7075704C4F562D706167696E6174696F6E223E526F772873292027202B2070446174612E66697273745F726F77202B';
wwv_flow_api.g_varchar2_table(173) := '2027202D2027202B2070446174612E6C6173745F726F77202B20273C2F6469763E272020202020202020202020202020202020202020202020200D0A202020202020202020202020202020202020202020202020202020206966202870446174612E6669';
wwv_flow_api.g_varchar2_table(174) := '7273745F726F7720213D203129207B0D0A2020202020202020202020202020202020202020202020202020202020202020646973706C61795F68746D6C202B3D20273C696E7075742069643D2227202B2073656C662E6F7074696F6E732E6974656D4E61';
wwv_flow_api.g_varchar2_table(175) := '6D65202B20275F505245562220646174612D726F773D2227202B202870446174612E66697273745F726F77202D2073656C662E6F7074696F6E732E6D6F64616C526F777329202B20272220747970653D22627574746F6E222076616C75653D2227202B20';
wwv_flow_api.g_varchar2_table(176) := '73656C662E6F7074696F6E732E70726576696F75734C6162656C202B20272220636C6173733D22742D427574746F6E20742D506F7075704C4F562D627574746F6E223B223E270D0A20202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(177) := '7D0D0A202020202020202020202020202020202020202020202020202020206966202870446174612E6D6F72655F746865726529207B0D0A2020202020202020202020202020202020202020202020202020202020202020646973706C61795F68746D6C';
wwv_flow_api.g_varchar2_table(178) := '202B3D20273C696E7075742069643D2227202B2073656C662E6F7074696F6E732E6974656D4E616D65202B20275F4E4558542220646174612D726F773D2227202B202870446174612E6C6173745F726F77202B203129202B20272220747970653D226275';
wwv_flow_api.g_varchar2_table(179) := '74746F6E222076616C75653D2227202B2073656C662E6F7074696F6E732E6E6578744C6162656C202B20272220636C6173733D22742D427574746F6E20742D506F7075704C4F562D627574746F6E223B223E270D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(180) := '202020202020202020202020207D0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(181) := '202020202020202073656C662E6469616C6F67526F7773242E68746D6C28646973706C61795F68746D6C290D0A202020202020202020202020202020207D2C0D0A202020202020202020202020202020206572726F723A2066756E6374696F6E2028705F';
wwv_flow_api.g_varchar2_table(182) := '5848522C20705F746578742C20705F6572726F7229207B0D0A2020202020202020202020202020202020202020617065782E64656275672E6C6F67282750545241494C272C20275345415243485F5245434F524453206661696C656420666F7220726561';
wwv_flow_api.g_varchar2_table(183) := '736F6E3A272C20705F5848522C20705F746578742C20705F6572726F72290D0A2020202020202020202020202020202020202020617065782E6D6573736167652E616C657274282741636365737320746F207265636F726473206661696C656420666F72';
wwv_flow_api.g_varchar2_table(184) := '20666F6C6C6F77696E6720726561736F6E3A2027202B20705F6572726F72290D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A2020202020202020290D0A202020207D202020200D0A7D29';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(10744050915455015)
,p_plugin_id=>wwv_flow_api.id(10741678269412622)
,p_file_name=>'Client Side Code.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(10738433832175902)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(10686224609175870)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(10725035686175889)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(10738315092175901)
,p_nav_bar_list_template_id=>wwv_flow_api.id(10724960263175889)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(10738433832175902)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'LOCAL_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190813082932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5604994982734007)
,p_plug_name=>'Pages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(10694824594175880)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(5624154882852003)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(10719911335175888)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10740271979175917)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10709253850175883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(10739723207175915)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(10728120136175891)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(10738433832175902)
,p_name=>'Employees'
,p_page_mode=>'NORMAL'
,p_step_title=>'Employees'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Employees'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(10690826802175877)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> The report here is set up to filter employees by the two location and business fields. Note that while employees for example work in France or England, the filters can be set at higher regional level, for example specifying “Europe”. </p>',
'<p>This can be done using normal popup LOVs. But here the user has the option of clicking on the links to basically traverse up location or business tree. This is just like breadcrumbs and familiar to most users. This simple feature makes navigation '
||'and exploration of data that much easier. </p>',
'<p>Try selecting different levels of location and business, either with the search button or by clicking on the different levels of the displayed paths. </p>'))
,p_last_updated_by=>'LOCAL_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190814143114'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5520111159375267)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10709253850175883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(10739723207175915)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(10728120136175891)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5520744851375267)
,p_plug_name=>'Employees'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10704372026175882)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'location_tab as (',
'    select',
'        id,',
'        location',
'    from ',
'        ptrail_locations',
'    start with ',
'        (:P2_LOCATION_ID is null and parent_id is null)',
'        or',
'        (id = :P2_LOCATION_ID)',
'    connect by ',
'        prior id = parent_id',
'),',
'business_tab as (',
'    select',
'        id,',
'        business',
'    from ',
'        ptrail_businesses',
'    start with ',
'        (:P2_BUSINESS_ID is null and parent_id is null)',
'        or',
'        (id = :P2_BUSINESS_ID)',
'    connect by ',
'        prior id = parent_id',
')    ',
'select',
'    e.*,',
'    l.location,',
'    b.business',
'from',
'    ptrail_employees            e',
'    inner join location_tab     l on l.id = e.location_id',
'    inner join business_tab     b on b.id = e.business_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_LOCATION_ID,P2_BUSINESS_ID'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5520828909375267)
,p_name=>'Employees'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOCAL_ADMIN'
,p_internal_uid=>5520828909375267
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5521250937375269)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5521618888375270)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5522017664375270)
,p_db_column_name=>'SECOND_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Second Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5522401725375271)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Employee ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5522897521375271)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Location Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5523273502375271)
,p_db_column_name=>'BUSINESS_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Business Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5654483994284622)
,p_db_column_name=>'LOCATION'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5654507787284623)
,p_db_column_name=>'BUSINESS'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'Business'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5524408099381492)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'55245'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'SECOND_NAME:FIRST_NAME:EMPLOYEE_ID:LOCATION:BUSINESS:'
,p_sort_column_1=>'SECOND_NAME'
,p_sort_direction_1=>'ASC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5654622594284624)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10694824594175880)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5655576894284633)
,p_plug_name=>'Guidance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5654727591284625)
,p_name=>'P2_LOCATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5654622594284624)
,p_item_default=>'1'
,p_prompt=>'Locations'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5654883492284626)
,p_name=>'P2_BUSINESS_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5654622594284624)
,p_item_default=>'11'
,p_prompt=>'Businesses'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(business, '':'') as s',
'from ',
'    ptrail_businesses',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    business'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5654968080284627)
,p_name=>'OnChangeFilters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_BUSINESS_ID,P2_LOCATION_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5655027618284628)
,p_event_id=>wwv_flow_api.id(5654968080284627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5520744851375267)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(10738433832175902)
,p_name=>'Locations'
,p_page_mode=>'NORMAL'
,p_step_title=>'Locations'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Locations'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(10690826802175877)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'<p>This report shows the overall location tree, using the “Start from” and “Depth” fields to filter from what point we display the tree and how deep we go. I am using these options to navigate through a large tree that would likely be a little much f'
||'or a normal tree page item to be performant. In any event, the “Start from” field is a plug-in as before, but the first column in the report links directly to the “Start from” field. As before, however deep you go in the structure, you can easily ris'
||'e back up using the links in the parent trail field.</p> '
,p_last_updated_by=>'LOCAL_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190812164243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5545006862110206)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10709253850175883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(10739723207175915)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(10728120136175891)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5545659777110207)
,p_plug_name=>'Locations'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10704372026175882)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    l.*,',
'    replace(lpad(''X'', level - 1, ''X''), ''X'', ''&#8231; &#8231; &#8231; &#8231; '') || location as location_indent',
'from',
'    ptrail_locations l',
'where',
'    :P3_DEPTH = 0',
'    or',
'    (:P3_DEPTH <> 0 and level <= :P3_DEPTH)',
'start with',
'    (:P3_START_ID is null and parent_id is null)',
'    or',
'    (id = :P3_START_ID)',
'connect by',
'    prior id = parent_id',
'order siblings by',
'    id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P3_START_ID,P3_DEPTH'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5545756094110207)
,p_name=>'Locations'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOCAL_ADMIN'
,p_internal_uid=>5545756094110207
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5546108917110210)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5546463986110211)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Parent Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5546832476110211)
,p_db_column_name=>'LOCATION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5547270718110211)
,p_db_column_name=>'LOCATION_INDENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Structure'
,p_column_link=>'javascript:$s(''P3_START_ID'', ''#ID#'');'
,p_column_linktext=>'#LOCATION_INDENT#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5548634330141600)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'55487'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'LOCATION_INDENT:LOCATION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5655676332284634)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10694824594175880)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5655753191284635)
,p_plug_name=>'Guidance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5655816676284636)
,p_name=>'P3_START_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5655676332284634)
,p_prompt=>'Start from'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5655943584284637)
,p_name=>'P3_DEPTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5655676332284634)
,p_item_default=>'0'
,p_prompt=>'Depth'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Show all;0,1;1,2;2,3;3,4;4'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5656052056284638)
,p_name=>'OnChangeFilters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_START_ID,P3_DEPTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5656134470284639)
,p_event_id=>wwv_flow_api.id(5656052056284638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5545659777110207)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(10738433832175902)
,p_name=>'Businesses'
,p_page_mode=>'NORMAL'
,p_step_title=>'Businesses'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Businesses'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(10690826802175877)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'<p>This report on businesses is just like the previous one on locations, but in this instance, because the ptrail_businesses table already has a central umbrella “Corporation” record under which all others fall, there is no need to use the feature su'
||'pported by the plugin to add an all-encompassing “All” element on the front of all the records. So if everything falls under a single root within your table, you are fine, but if you have multiple records with null parent_ids, this is also no problem'
||'. </p> '
,p_last_updated_by=>'LOCAL_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190813160604'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11098343040331405)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10709253850175883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(10739723207175915)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(10728120136175891)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11098995955331406)
,p_plug_name=>'Businesses'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10704372026175882)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    b.*,',
'    replace(lpad(''X'', level - 1, ''X''), ''X'', ''&#8231; &#8231; &#8231; &#8231; '') || business as business_indent',
'from',
'    ptrail_businesses b',
'where',
'    :P4_DEPTH = 0',
'    or',
'    (:P4_DEPTH <> 0 and level <= :P4_DEPTH)',
'start with',
'    (:P4_START_ID is null and parent_id is null)',
'    or',
'    (id = :P4_START_ID)',
'connect by',
'    prior id = parent_id',
'order siblings by',
'    id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_START_ID,P4_DEPTH'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11099092272331406)
,p_name=>'Locations'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LOCAL_ADMIN'
,p_internal_uid=>11099092272331406
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5554734539221207)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5555049809221208)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Parent Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5656256934284640)
,p_db_column_name=>'BUSINESS'
,p_display_order=>12
,p_column_identifier=>'E'
,p_column_label=>'Business'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5656327653284641)
,p_db_column_name=>'BUSINESS_INDENT'
,p_display_order=>22
,p_column_identifier=>'F'
,p_column_label=>'Structure'
,p_column_link=>'javascript:$s(''P4_START_ID'', ''#ID#'');'
,p_column_linktext=>'#BUSINESS_INDENT#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11101970508362799)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'55562'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_view_mode=>'REPORT'
,p_report_columns=>'BUSINESS_INDENT:BUSINESS:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11209012510505833)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10694824594175880)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11209089369505834)
,p_plug_name=>'Guidance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5556950383221210)
,p_name=>'P4_START_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11209012510505833)
,p_item_default=>'1'
,p_prompt=>'Start from'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(business, '':'') as s',
'from ',
'    ptrail_businesses',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    business'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5557386765221211)
,p_name=>'P4_DEPTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11209012510505833)
,p_item_default=>'0'
,p_prompt=>'Depth'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Show all;0,1;1,2;2,3;3,4;4'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5558393117221213)
,p_name=>'OnChangeFilters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_START_ID,P4_DEPTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5558835573221214)
,p_event_id=>wwv_flow_api.id(5558393117221213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11098995955331406)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(10738433832175902)
,p_name=>'Plugin details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Plugin details'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'LOCAL_ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190814134109'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5564110775283310)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(10709253850175883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(10739723207175915)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(10728120136175891)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5568510944360303)
,p_plug_name=>'Javascript API supported for dynamic actions etc'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5571158269360329)
,p_plug_name=>'Normal handling of events'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5571547889360333)
,p_plug_name=>'Cascade'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5571814595360336)
,p_plug_name=>'LOV set up'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'The LOV query should have three columns. The first column “r” is the value that the item should have if this record is selected. The second and third columns are basically a trail from the top of the hierarchy through to the current record. The secon'
||'d column “d” specifically picks out the values as it goes along, while the third column “s” picks out what needs to be displayed as it goes along. Always use a colon for separating path elements. The following are examples. '
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5572487852360342)
,p_name=>'Left'
,p_parent_plug_id=>wwv_flow_api.id(5571814595360336)
,p_template=>wwv_flow_api.id(10694824594175880)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(10714885737175886)
,p_query_num_rows=>14
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5572938850360347)
,p_query_column_id=>1
,p_column_alias=>'R'
,p_column_display_sequence=>1
,p_column_heading=>'R'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5573092388360348)
,p_query_column_id=>2
,p_column_alias=>'D'
,p_column_display_sequence=>2
,p_column_heading=>'D'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5573150214360349)
,p_query_column_id=>3
,p_column_alias=>'S'
,p_column_display_sequence=>3
,p_column_heading=>'S'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5573261449360350)
,p_name=>'Right'
,p_parent_plug_id=>wwv_flow_api.id(5571814595360336)
,p_template=>wwv_flow_api.id(10694824594175880)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- demo does not assume that you have the emp sample data installed',
'select 7839 as r, '':7839''                as d,   '':KING''                  as s from dual union all',
'select 7698 as r, '':7839:7698''           as d,	'':KING:BLAKE''             as s from dual union all',
'select 7499 as r, '':7839:7698:7499''      as d,	'':KING:BLAKE:ALLEN''       as s from dual union all',
'select 7900 as r, '':7839:7698:7900''      as d,	'':KING:BLAKE:JAMES''       as s from dual union all',
'select 7654 as r, '':7839:7698:7654''      as d,	'':KING:BLAKE:MARTIN''      as s from dual union all',
'select 7844 as r, '':7839:7698:7844''      as d,	'':KING:BLAKE:TURNER''      as s from dual union all',
'select 7521 as r, '':7839:7698:7521''      as d,	'':KING:BLAKE:WARD''        as s from dual union all',
'select 7782 as r, '':7839:7782''           as d,	'':KING:CLARK''             as s from dual union all',
'select 7934 as r, '':7839:7782:7934''      as d,	'':KING:CLARK:MILLER''      as s from dual union all',
'select 7566 as r, '':7839:7566''           as d,	'':KING:JONES''             as s from dual union all',
'select 7902 as r, '':7839:7566:7902''      as d,	'':KING:JONES:FORD''        as s from dual union all',
'select 7369 as r, '':7839:7566:7902:7369'' as d,	'':KING:JONES:FORD:SMITH''  as s from dual union all',
'select 7788 as r, '':7839:7566:7788''      as d,	'':KING:JONES:SCOTT''       as s from dual union all',
'select 7876 as r, '':7839:7566:7788:7876'' as d,	'':KING:JONES:SCOTT:ADAMS'' as s from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(10714885737175886)
,p_query_num_rows=>14
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5604482460734002)
,p_query_column_id=>1
,p_column_alias=>'R'
,p_column_display_sequence=>1
,p_column_heading=>'R'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5604541226734003)
,p_query_column_id=>2
,p_column_alias=>'D'
,p_column_display_sequence=>2
,p_column_heading=>'D'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5604654256734004)
,p_query_column_id=>3
,p_column_alias=>'S'
,p_column_display_sequence=>3
,p_column_heading=>'S'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5656481540284642)
,p_plug_name=>'Basic parent trail variants'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(10704833095175882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5657261104284650)
,p_name=>'Language support'
,p_template=>wwv_flow_api.id(10704833095175882)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''PTRAIL_DIALOG_TITLE''  as message_name, ''Select value''              as message_text from dual union all',
'select ''PTRAIL_NO_DATA_FOUND'' as message_name, ''No matching records found'' as message_text from dual union all',
'select ''PTRAIL_INVALID_VALUE'' as message_name, ''Invalid value''             as message_text from dual'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(10714885737175886)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5568330312360301)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Message in Shared components ... Text messages'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5568426789360302)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Default'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5568701560360305)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Hide'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5569068645360308)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_SHOW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Show'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5569354473360311)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_DISABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Disable'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5569617319360314)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_ENABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Enable'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5569920524360317)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Clear'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5570282549360320)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_SET_VALID'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Set value'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5570568334360323)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_SET_INVALID'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Set invalid'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5570846559360326)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(5568510944360303)
,p_button_name=>'BTN_SET_NO_AJAX'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(10727687954175891)
,p_button_image_alt=>'Set without ajax'
,p_button_position=>'TOP'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5571292309360330)
,p_name=>'P5_EVENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5571158269360329)
,p_item_default=>'70'
,p_prompt=>'Try changing this one'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>15
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5571666620360334)
,p_name=>'P5_OPTIONS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5571547889360333)
,p_item_default=>'1'
,p_prompt=>'What to be able to select from'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''List everything'' as d, 1 as r from dual union all',
'select ''Just list regions'' as d, 2 as r from dual'))
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5571744263360335)
,p_name=>'P5_CASCADE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5571547889360333)
,p_item_default=>'70'
,p_prompt=>'Searchable'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'where',
'    :P5_OPTIONS = 1 or connect_by_isleaf = 0',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_cascade_parent_items=>'P5_OPTIONS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5572348666360341)
,p_name=>'P5_QUERY_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5572487852360342)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_prompt=>'Query 1'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cHeight=>12
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5604340326734001)
,p_name=>'P5_QUERY_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5573261449360350)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    empno                           as r,',
'    sys_connect_by_path(empno, '':'') as d,',
'    sys_connect_by_path(ename, '':'') as s',
'from ',
'    emp',
'start with ',
'    mgr is null',
'connect by ',
'    prior empno = mgr',
'order siblings by ',
'    ename'))
,p_prompt=>'Query 2'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cHeight=>12
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5604703237734005)
,p_name=>'P5_PLUGIN_API'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5568510944360303)
,p_item_default=>'70'
,p_prompt=>'Responsive to api calls'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727239456175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5656569107284643)
,p_name=>'P5_READ_ONLY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5656481540284642)
,p_item_default=>'70'
,p_prompt=>'Read only'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(10727104418175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5656671788284644)
,p_name=>'P5_EDITABLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5656481540284642)
,p_item_default=>'70'
,p_prompt=>'Editable'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727104418175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5656869972284646)
,p_name=>'P5_SEARCHABLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5656481540284642)
,p_item_default=>'70'
,p_prompt=>'Searchable'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727104418175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5656925981284647)
,p_name=>'P5_LEADING_NULL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5656481540284642)
,p_item_default=>'70'
,p_prompt=>'Lead umbrella null node'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727104418175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' » '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5657064936284648)
,p_name=>'P5_SEPARATOR_ETC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5656481540284642)
,p_item_default=>'70'
,p_prompt=>'Set your own separator'
,p_display_as=>'PLUGIN_RABARTON.PARENTTRAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id                                 as r,',
'    sys_connect_by_path(id,       '':'') as d,',
'    sys_connect_by_path(location, '':'') as s',
'from ',
'    ptrail_locations',
'start with ',
'    parent_id is null',
'connect by ',
'    prior id = parent_id',
'order siblings by ',
'    location'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(10727104418175890)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>' / '
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5657125390284649)
,p_name=>'P5_COMMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(5656481540284642)
,p_item_default=>'Yes, all formats supported including ''floating'' in Apex 19'
,p_prompt=>'Other label formats?'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(10727104418175890)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5568814070360306)
,p_name=>'OnHide'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5568701560360305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5568956759360307)
,p_event_id=>wwv_flow_api.id(5568814070360306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5569126266360309)
,p_name=>'OnShow'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5569068645360308)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5569239290360310)
,p_event_id=>wwv_flow_api.id(5569126266360309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5569422876360312)
,p_name=>'OnDisable'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5569354473360311)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5569552518360313)
,p_event_id=>wwv_flow_api.id(5569422876360312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5569762363360315)
,p_name=>'OnEnable'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5569617319360314)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5569860399360316)
,p_event_id=>wwv_flow_api.id(5569762363360315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5570084356360318)
,p_name=>'OnClear'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5569920524360317)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5570179990360319)
,p_event_id=>wwv_flow_api.id(5570084356360318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5570340619360321)
,p_name=>'OnSetValid'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5570282549360320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5570436291360322)
,p_event_id=>wwv_flow_api.id(5570340619360321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'43'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5570665625360324)
,p_name=>'OnSetInvalid'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5570568334360323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5570793833360325)
,p_event_id=>wwv_flow_api.id(5570665625360324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_PLUGIN_API'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'12345'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5570967320360327)
,p_name=>'OnSetWithoutAjax'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5570846559360326)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5571048933360328)
,p_event_id=>wwv_flow_api.id(5570967320360327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#P5_PLUGIN_API'').parentTrail(''FieldSetValue'', ''132'', '':126:127:132'', '':Asia:Central Asia:Uzbekistan'')'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5571354701360331)
,p_name=>'OnChange'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_EVENTS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5571469179360332)
,p_event_id=>wwv_flow_api.id(5571354701360331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert(''Caught OnChange'');'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(5457267843301607)
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table ptrail_employees',
'/',
'drop table ptrail_locations',
'/',
'drop table ptrail_businesses',
'/',
''))
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(5457611529305996)
,p_install_id=>wwv_flow_api.id(5457267843301607)
,p_name=>'Create and populate ptrail tables'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- create businesses table --',
'',
'create table ptrail_businesses (',
'    id              number primary key using index enable,',
'    parent_id       number,',
'    business        varchar2(256) not null',
')',
'/',
'',
'-- create locations table --',
'',
'create table ptrail_locations (',
'    id              number primary key using index enable,',
'    parent_id       number,',
'    location        varchar2(256) not null',
')',
'/',
'',
'-- create employees table --',
'',
'create table ptrail_employees (',
'    id              number primary key using index enable,',
'    first_name      varchar2(256),',
'    second_name     varchar2(256) not null,',
'    employee_id     varchar2(256),',
'    location_id     number references ptrail_locations  on delete set null,',
'    business_id     number references ptrail_businesses on delete set null',
')',
'/',
'',
'-- populate businesses --',
'',
'insert into ptrail_businesses (id, parent_id, business) values ( 1, null, ''Corporation'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 2,  1,       ''Head Office'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 3,  2,             ''Finance'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 4,  2,             ''Legal and Compliance'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 5,  2,             ''Business Development'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 6,  1,       ''Products'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 7,  6,             ''Cars'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 8,  7,                 ''Power train'');',
'insert into ptrail_businesses (id, parent_id, business) values ( 9,  7,                 ''Controls'');',
'insert into ptrail_businesses (id, parent_id, business) values (10,  7,                 ''Interior'');',
'insert into ptrail_businesses (id, parent_id, business) values (11,  6,             ''Lorries'');',
'insert into ptrail_businesses (id, parent_id, business) values (12, 11,                 ''Motors'');',
'insert into ptrail_businesses (id, parent_id, business) values (13, 11,                 ''Cabins'');',
'insert into ptrail_businesses (id, parent_id, business) values (14, 11,                 ''Traction'');',
'insert into ptrail_businesses (id, parent_id, business) values (15,  6,             ''Motorbikes'');',
'insert into ptrail_businesses (id, parent_id, business) values (16,  1,       ''Services'');',
'insert into ptrail_businesses (id, parent_id, business) values (17, 16,             ''Components'');',
'insert into ptrail_businesses (id, parent_id, business) values (18, 16,             ''Maintenance'');',
'insert into ptrail_businesses (id, parent_id, business) values (19, 16,             ''Licensing'');',
'',
'-- populate locations --',
'',
'insert into ptrail_locations (id, parent_id, location) values (1, null, ''Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (2, 1, ''Southern Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (3, 2, ''Botswana'');',
'insert into ptrail_locations (id, parent_id, location) values (4, 2, ''Lesotho'');',
'insert into ptrail_locations (id, parent_id, location) values (5, 2, ''Namibia'');',
'insert into ptrail_locations (id, parent_id, location) values (6, 2, ''South Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (7, 2, ''Swaziland'');',
'insert into ptrail_locations (id, parent_id, location) values (8, 1, ''Middle Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (9, 8, ''Angola'');',
'insert into ptrail_locations (id, parent_id, location) values (10, 8, ''Cameroon'');',
'insert into ptrail_locations (id, parent_id, location) values (11, 8, ''Central African Republic'');',
'insert into ptrail_locations (id, parent_id, location) values (12, 8, ''Chad'');',
'insert into ptrail_locations (id, parent_id, location) values (13, 8, ''Congo (Brazzaville)'');',
'insert into ptrail_locations (id, parent_id, location) values (14, 8, ''Democratic Republic of the Congo'');',
'insert into ptrail_locations (id, parent_id, location) values (15, 8, ''Equatorial Guinea'');',
'insert into ptrail_locations (id, parent_id, location) values (16, 8, ''Gabon'');',
'insert into ptrail_locations (id, parent_id, location) values (17, 8, ''Sao Tome and Principe'');',
'insert into ptrail_locations (id, parent_id, location) values (18, 1, ''Eastern Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (19, 18, ''Eritrea'');',
'insert into ptrail_locations (id, parent_id, location) values (20, 18, ''Comoros'');',
'insert into ptrail_locations (id, parent_id, location) values (21, 18, ''Djibouti'');',
'insert into ptrail_locations (id, parent_id, location) values (22, 18, ''Burundi'');',
'insert into ptrail_locations (id, parent_id, location) values (23, 18, ''Ethiopia'');',
'insert into ptrail_locations (id, parent_id, location) values (24, 18, ''Kenya'');',
'insert into ptrail_locations (id, parent_id, location) values (25, 18, ''Madagascar'');',
'insert into ptrail_locations (id, parent_id, location) values (26, 18, ''Malawi'');',
'insert into ptrail_locations (id, parent_id, location) values (27, 18, ''Mauritius'');',
'insert into ptrail_locations (id, parent_id, location) values (28, 18, ''Mayotte'');',
'insert into ptrail_locations (id, parent_id, location) values (29, 18, ''Mozambique'');',
'insert into ptrail_locations (id, parent_id, location) values (30, 18, ''Reunion'');',
'insert into ptrail_locations (id, parent_id, location) values (31, 18, ''Rwanda'');',
'insert into ptrail_locations (id, parent_id, location) values (32, 18, ''Seychelles'');',
'insert into ptrail_locations (id, parent_id, location) values (33, 18, ''Somalia'');',
'insert into ptrail_locations (id, parent_id, location) values (34, 18, ''South Sudan'');',
'insert into ptrail_locations (id, parent_id, location) values (35, 18, ''Tanzania'');',
'insert into ptrail_locations (id, parent_id, location) values (36, 18, ''Uganda'');',
'insert into ptrail_locations (id, parent_id, location) values (37, 18, ''Zambia'');',
'insert into ptrail_locations (id, parent_id, location) values (38, 18, ''Zimbabwe'');',
'insert into ptrail_locations (id, parent_id, location) values (39, 1, ''Northern Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (40, 39, ''Algeria'');',
'insert into ptrail_locations (id, parent_id, location) values (41, 39, ''Egypt'');',
'insert into ptrail_locations (id, parent_id, location) values (42, 39, ''Libya'');',
'insert into ptrail_locations (id, parent_id, location) values (43, 39, ''Morocco'');',
'insert into ptrail_locations (id, parent_id, location) values (44, 39, ''Sudan'');',
'insert into ptrail_locations (id, parent_id, location) values (45, 39, ''Tunisia'');',
'insert into ptrail_locations (id, parent_id, location) values (46, 39, ''Western Sahara'');',
'insert into ptrail_locations (id, parent_id, location) values (47, 1, ''Western Africa'');',
'insert into ptrail_locations (id, parent_id, location) values (48, 47, ''Benin'');',
'insert into ptrail_locations (id, parent_id, location) values (49, 47, ''Burkina Faso'');',
'insert into ptrail_locations (id, parent_id, location) values (50, 47, ''Cabo Verd (Cape Verde)'');',
'insert into ptrail_locations (id, parent_id, location) values (51, 47, ''Cote dIvoire(Ivory Coast)'');',
'insert into ptrail_locations (id, parent_id, location) values (52, 47, ''Gambia'');',
'insert into ptrail_locations (id, parent_id, location) values (53, 47, ''Ghana'');',
'insert into ptrail_locations (id, parent_id, location) values (54, 47, ''Guinea'');',
'insert into ptrail_locations (id, parent_id, location) values (55, 47, ''Guinea-Bissau'');',
'insert into ptrail_locations (id, parent_id, location) values (56, 47, ''Liberia'');',
'insert into ptrail_locations (id, parent_id, location) values (57, 47, ''Mali'');',
'insert into ptrail_locations (id, parent_id, location) values (58, 47, ''Mauritania'');',
'insert into ptrail_locations (id, parent_id, location) values (59, 47, ''Niger'');',
'insert into ptrail_locations (id, parent_id, location) values (60, 47, ''Nigeria'');',
'insert into ptrail_locations (id, parent_id, location) values (61, 47, ''Saint Helena'');',
'insert into ptrail_locations (id, parent_id, location) values (62, 47, ''Senegal'');',
'insert into ptrail_locations (id, parent_id, location) values (63, 47, ''Sierra Leone'');',
'insert into ptrail_locations (id, parent_id, location) values (64, 47, ''Togo'');',
'insert into ptrail_locations (id, parent_id, location) values (65, null, ''Americas'');',
'insert into ptrail_locations (id, parent_id, location) values (66, 65, ''Caribbean'');',
'insert into ptrail_locations (id, parent_id, location) values (67, 66, ''Anguilla'');',
'insert into ptrail_locations (id, parent_id, location) values (68, 66, ''Antigua and Barbuda'');',
'insert into ptrail_locations (id, parent_id, location) values (69, 66, ''Aruba'');',
'insert into ptrail_locations (id, parent_id, location) values (70, 66, ''Bahamas'');',
'insert into ptrail_locations (id, parent_id, location) values (71, 66, ''Barbados'');',
'insert into ptrail_locations (id, parent_id, location) values (72, 66, ''Bonaire, Saint Eustatius and Saba'');',
'insert into ptrail_locations (id, parent_id, location) values (73, 66, ''British Virgin Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (74, 66, ''Cayman Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (75, 66, ''Cuba'');',
'insert into ptrail_locations (id, parent_id, location) values (76, 66, ''Curacao'');',
'insert into ptrail_locations (id, parent_id, location) values (77, 66, ''Dominica'');',
'insert into ptrail_locations (id, parent_id, location) values (78, 66, ''Dominican Republic'');',
'insert into ptrail_locations (id, parent_id, location) values (79, 66, ''Grenada'');',
'insert into ptrail_locations (id, parent_id, location) values (80, 66, ''Guadeloupe'');',
'insert into ptrail_locations (id, parent_id, location) values (81, 66, ''Haiti'');',
'insert into ptrail_locations (id, parent_id, location) values (82, 66, ''Jamaica'');',
'insert into ptrail_locations (id, parent_id, location) values (83, 66, ''Martinique'');',
'insert into ptrail_locations (id, parent_id, location) values (84, 66, ''Montserrat'');',
'insert into ptrail_locations (id, parent_id, location) values (85, 66, ''Puerto Rico'');',
'insert into ptrail_locations (id, parent_id, location) values (86, 66, ''Saint Barthemy'');',
'insert into ptrail_locations (id, parent_id, location) values (87, 66, ''Saint Kitts and Nevis'');',
'insert into ptrail_locations (id, parent_id, location) values (88, 66, ''Saint Lucia'');',
'insert into ptrail_locations (id, parent_id, location) values (89, 66, ''Saint Martin'');',
'insert into ptrail_locations (id, parent_id, location) values (90, 66, ''Saint Vincent and the Grenadines'');',
'insert into ptrail_locations (id, parent_id, location) values (91, 66, ''Saint-Martin'');',
'insert into ptrail_locations (id, parent_id, location) values (92, 66, ''Sint Maarten'');',
'insert into ptrail_locations (id, parent_id, location) values (93, 66, ''Trinidad and Tobago'');',
'insert into ptrail_locations (id, parent_id, location) values (94, 66, ''Turks and Caicos Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (95, 66, ''United States Virgin Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (96, 65, ''Central America'');',
'insert into ptrail_locations (id, parent_id, location) values (97, 96, ''Belize'');',
'insert into ptrail_locations (id, parent_id, location) values (98, 96, ''Costa Rica'');',
'insert into ptrail_locations (id, parent_id, location) values (99, 96, ''El Salvador'');',
'insert into ptrail_locations (id, parent_id, location) values (100, 96, ''Guatemala'');',
'insert into ptrail_locations (id, parent_id, location) values (101, 96, ''Honduras'');',
'insert into ptrail_locations (id, parent_id, location) values (102, 96, ''Mexico'');',
'insert into ptrail_locations (id, parent_id, location) values (103, 96, ''Nicaragua'');',
'insert into ptrail_locations (id, parent_id, location) values (104, 96, ''Panama'');',
'insert into ptrail_locations (id, parent_id, location) values (105, 65, ''Northern America'');',
'insert into ptrail_locations (id, parent_id, location) values (106, 105, ''Bermuda'');',
'insert into ptrail_locations (id, parent_id, location) values (107, 105, ''Canada'');',
'insert into ptrail_locations (id, parent_id, location) values (108, 105, ''Greenland'');',
'insert into ptrail_locations (id, parent_id, location) values (109, 105, ''Saint Pierre and Miquelon'');',
'insert into ptrail_locations (id, parent_id, location) values (110, 105, ''USA'');',
'insert into ptrail_locations (id, parent_id, location) values (111, 65, ''South America'');',
'insert into ptrail_locations (id, parent_id, location) values (112, 111, ''Argentina'');',
'insert into ptrail_locations (id, parent_id, location) values (113, 111, ''Bolivia'');',
'insert into ptrail_locations (id, parent_id, location) values (114, 111, ''Brazil'');',
'insert into ptrail_locations (id, parent_id, location) values (115, 111, ''Chile'');',
'insert into ptrail_locations (id, parent_id, location) values (116, 111, ''Colombia'');',
'insert into ptrail_locations (id, parent_id, location) values (117, 111, ''Ecuador'');',
'insert into ptrail_locations (id, parent_id, location) values (118, 111, ''Falkland Islands(Malvinas)'');',
'insert into ptrail_locations (id, parent_id, location) values (119, 111, ''French Guiana'');',
'insert into ptrail_locations (id, parent_id, location) values (120, 111, ''Guyana'');',
'insert into ptrail_locations (id, parent_id, location) values (121, 111, ''Paraguay'');',
'insert into ptrail_locations (id, parent_id, location) values (122, 111, ''Peru'');',
'insert into ptrail_locations (id, parent_id, location) values (123, 111, ''Suriname'');',
'insert into ptrail_locations (id, parent_id, location) values (124, 111, ''Uruguay'');',
'insert into ptrail_locations (id, parent_id, location) values (125, 111, ''Venezuela'');',
'insert into ptrail_locations (id, parent_id, location) values (126, null, ''Asia'');',
'insert into ptrail_locations (id, parent_id, location) values (127, 126, ''Central Asia'');',
'insert into ptrail_locations (id, parent_id, location) values (128, 127, ''Kazakhstan'');',
'insert into ptrail_locations (id, parent_id, location) values (129, 127, ''Kyrgyzstan'');',
'insert into ptrail_locations (id, parent_id, location) values (130, 127, ''Tajikistan'');',
'insert into ptrail_locations (id, parent_id, location) values (131, 127, ''Turkmenistan'');',
'insert into ptrail_locations (id, parent_id, location) values (132, 127, ''Uzbekistan'');',
'insert into ptrail_locations (id, parent_id, location) values (133, 126, ''Eastern Asia'');',
'insert into ptrail_locations (id, parent_id, location) values (134, 133, ''China'');',
'insert into ptrail_locations (id, parent_id, location) values (135, 133, ''Democratic Peoples Republic of Korea(North Korea)'');',
'insert into ptrail_locations (id, parent_id, location) values (136, 133, ''Hong Kong Special Administrative Region of China'');',
'insert into ptrail_locations (id, parent_id, location) values (137, 133, ''Japan'');',
'insert into ptrail_locations (id, parent_id, location) values (138, 133, ''Macao Special Administrative Region of China'');',
'insert into ptrail_locations (id, parent_id, location) values (139, 133, ''Mongolia'');',
'insert into ptrail_locations (id, parent_id, location) values (140, 133, ''Republic of Korea(South Korea)'');',
'insert into ptrail_locations (id, parent_id, location) values (141, 133, ''Taiwan'');',
'insert into ptrail_locations (id, parent_id, location) values (142, 126, ''South-central Asia'');',
'insert into ptrail_locations (id, parent_id, location) values (143, 142, ''Afghanistan'');',
'insert into ptrail_locations (id, parent_id, location) values (144, 142, ''Bangladesh'');',
'insert into ptrail_locations (id, parent_id, location) values (145, 142, ''Bhutan'');',
'insert into ptrail_locations (id, parent_id, location) values (146, 142, ''India'');',
'insert into ptrail_locations (id, parent_id, location) values (147, 142, ''Iran'');',
'insert into ptrail_locations (id, parent_id, location) values (148, 142, ''Maldives'');',
'insert into ptrail_locations (id, parent_id, location) values (149, 142, ''Nepal'');',
'insert into ptrail_locations (id, parent_id, location) values (150, 142, ''Pakistan'');',
'insert into ptrail_locations (id, parent_id, location) values (151, 142, ''Sri Lanka'');',
'insert into ptrail_locations (id, parent_id, location) values (152, 126, ''South-eastern Asia'');',
'insert into ptrail_locations (id, parent_id, location) values (153, 152, ''Brunei'');',
'insert into ptrail_locations (id, parent_id, location) values (154, 152, ''Cambodia'');',
'insert into ptrail_locations (id, parent_id, location) values (155, 152, ''Indonesia'');',
'insert into ptrail_locations (id, parent_id, location) values (156, 152, ''Laos'');',
'insert into ptrail_locations (id, parent_id, location) values (157, 152, ''Malaysia'');',
'insert into ptrail_locations (id, parent_id, location) values (158, 152, ''Myanmar(Burma)'');',
'insert into ptrail_locations (id, parent_id, location) values (159, 152, ''Philippines'');',
'insert into ptrail_locations (id, parent_id, location) values (160, 152, ''Singapore'');',
'insert into ptrail_locations (id, parent_id, location) values (161, 152, ''Thailand'');',
'insert into ptrail_locations (id, parent_id, location) values (162, 152, ''Timor-Leste(East Timor)'');',
'insert into ptrail_locations (id, parent_id, location) values (163, 152, ''Viet Nam'');',
'insert into ptrail_locations (id, parent_id, location) values (164, 126, ''Western Asia'');',
'insert into ptrail_locations (id, parent_id, location) values (165, 164, ''Armenia'');',
'insert into ptrail_locations (id, parent_id, location) values (166, 164, ''Azerbaijan'');',
'insert into ptrail_locations (id, parent_id, location) values (167, 164, ''Bahrain'');',
'insert into ptrail_locations (id, parent_id, location) values (168, 164, ''Cyprus'');',
'insert into ptrail_locations (id, parent_id, location) values (169, 164, ''Georgia'');',
'insert into ptrail_locations (id, parent_id, location) values (170, 164, ''Iraq'');',
'insert into ptrail_locations (id, parent_id, location) values (171, 164, ''Israel'');',
'insert into ptrail_locations (id, parent_id, location) values (172, 164, ''Jordan'');',
'insert into ptrail_locations (id, parent_id, location) values (173, 164, ''Kuwait'');',
'insert into ptrail_locations (id, parent_id, location) values (174, 164, ''Lebanon'');',
'insert into ptrail_locations (id, parent_id, location) values (175, 164, ''Oman'');',
'insert into ptrail_locations (id, parent_id, location) values (176, 164, ''Palestine'');',
'insert into ptrail_locations (id, parent_id, location) values (177, 164, ''Qatar'');',
'insert into ptrail_locations (id, parent_id, location) values (178, 164, ''Saudi Arabia'');',
'insert into ptrail_locations (id, parent_id, location) values (179, 164, ''Syria'');',
'insert into ptrail_locations (id, parent_id, location) values (180, 164, ''Turkey'');',
'insert into ptrail_locations (id, parent_id, location) values (181, 164, ''United Arab Emirates'');',
'insert into ptrail_locations (id, parent_id, location) values (182, 164, ''Yemen'');',
'insert into ptrail_locations (id, parent_id, location) values (183, null, ''Europe'');',
'insert into ptrail_locations (id, parent_id, location) values (184, 183, ''Eastern Europe'');',
'insert into ptrail_locations (id, parent_id, location) values (185, 184, ''Belarus'');',
'insert into ptrail_locations (id, parent_id, location) values (186, 184, ''Bulgaria'');',
'insert into ptrail_locations (id, parent_id, location) values (187, 184, ''Czech Republic'');',
'insert into ptrail_locations (id, parent_id, location) values (188, 184, ''Hungary'');',
'insert into ptrail_locations (id, parent_id, location) values (189, 184, ''Moldova'');',
'insert into ptrail_locations (id, parent_id, location) values (190, 184, ''Poland'');',
'insert into ptrail_locations (id, parent_id, location) values (191, 184, ''Romania'');',
'insert into ptrail_locations (id, parent_id, location) values (192, 184, ''Russia'');',
'insert into ptrail_locations (id, parent_id, location) values (193, 184, ''Slovakia'');',
'insert into ptrail_locations (id, parent_id, location) values (194, 184, ''Ukraine'');',
'insert into ptrail_locations (id, parent_id, location) values (195, 183, ''Northern Europe'');',
'insert into ptrail_locations (id, parent_id, location) values (196, 195, ''Channel Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (197, 195, ''Denmark'');',
'insert into ptrail_locations (id, parent_id, location) values (198, 195, ''England'');',
'insert into ptrail_locations (id, parent_id, location) values (199, 195, ''Estonia'');',
'insert into ptrail_locations (id, parent_id, location) values (200, 195, ''Faroe Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (201, 195, ''Finland'');',
'insert into ptrail_locations (id, parent_id, location) values (202, 195, ''Guernsey'');',
'insert into ptrail_locations (id, parent_id, location) values (203, 195, ''Iceland'');',
'insert into ptrail_locations (id, parent_id, location) values (204, 195, ''Ireland'');',
'insert into ptrail_locations (id, parent_id, location) values (205, 195, ''Isle of Man'');',
'insert into ptrail_locations (id, parent_id, location) values (206, 195, ''Jersey'');',
'insert into ptrail_locations (id, parent_id, location) values (207, 195, ''Latvia'');',
'insert into ptrail_locations (id, parent_id, location) values (208, 195, ''Lithuania'');',
'insert into ptrail_locations (id, parent_id, location) values (209, 195, ''Northern Ireland'');',
'insert into ptrail_locations (id, parent_id, location) values (210, 195, ''Norway'');',
'insert into ptrail_locations (id, parent_id, location) values (211, 195, ''Sark'');',
'insert into ptrail_locations (id, parent_id, location) values (212, 195, ''Scotland'');',
'insert into ptrail_locations (id, parent_id, location) values (213, 195, ''Svalbard and Jan Mayen Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (214, 195, ''Sweden'');',
'insert into ptrail_locations (id, parent_id, location) values (215, 195, ''United Kingdom of Great Britain and Northern Ireland'');',
'insert into ptrail_locations (id, parent_id, location) values (216, 195, ''Wales'');',
'insert into ptrail_locations (id, parent_id, location) values (217, 183, ''Southern Europe'');',
'insert into ptrail_locations (id, parent_id, location) values (218, 217, ''Albania'');',
'insert into ptrail_locations (id, parent_id, location) values (219, 217, ''Andorra'');',
'insert into ptrail_locations (id, parent_id, location) values (220, 217, ''Bosnia and Herzegovina'');',
'insert into ptrail_locations (id, parent_id, location) values (221, 217, ''Croatia'');',
'insert into ptrail_locations (id, parent_id, location) values (222, 217, ''Gibraltar'');',
'insert into ptrail_locations (id, parent_id, location) values (223, 217, ''Greece'');',
'insert into ptrail_locations (id, parent_id, location) values (224, 217, ''Holy See'');',
'insert into ptrail_locations (id, parent_id, location) values (225, 217, ''Italy'');',
'insert into ptrail_locations (id, parent_id, location) values (226, 217, ''Macedonia'');',
'insert into ptrail_locations (id, parent_id, location) values (227, 217, ''Malta'');',
'insert into ptrail_locations (id, parent_id, location) values (228, 217, ''Montenegro'');',
'insert into ptrail_locations (id, parent_id, location) values (229, 217, ''Portugal'');',
'insert into ptrail_locations (id, parent_id, location) values (230, 217, ''San Marino'');',
'insert into ptrail_locations (id, parent_id, location) values (231, 217, ''Serbia'');',
'insert into ptrail_locations (id, parent_id, location) values (232, 217, ''Slovenia'');',
'insert into ptrail_locations (id, parent_id, location) values (233, 217, ''Spain'');',
'insert into ptrail_locations (id, parent_id, location) values (234, 183, ''Western Europe'');',
'insert into ptrail_locations (id, parent_id, location) values (235, 234, ''Austria'');',
'insert into ptrail_locations (id, parent_id, location) values (236, 234, ''Belgium'');',
'insert into ptrail_locations (id, parent_id, location) values (237, 234, ''France'');',
'insert into ptrail_locations (id, parent_id, location) values (238, 234, ''Germany'');',
'insert into ptrail_locations (id, parent_id, location) values (239, 234, ''Liechtenstein'');',
'insert into ptrail_locations (id, parent_id, location) values (240, 234, ''Luxembourg'');',
'insert into ptrail_locations (id, parent_id, location) values (241, 234, ''Monaco'');',
'insert into ptrail_locations (id, parent_id, location) values (242, 234, ''Switzerland'');',
'insert into ptrail_locations (id, parent_id, location) values (243, 234, ''The Netherlands(Holland)'');',
'insert into ptrail_locations (id, parent_id, location) values (244, null, ''Oceania'');',
'insert into ptrail_locations (id, parent_id, location) values (245, 244, ''Australia and New Zealand'');',
'insert into ptrail_locations (id, parent_id, location) values (246, 245, ''Australia'');',
'insert into ptrail_locations (id, parent_id, location) values (247, 245, ''New Zealand'');',
'insert into ptrail_locations (id, parent_id, location) values (248, 245, ''Norfolk Island'');',
'insert into ptrail_locations (id, parent_id, location) values (249, 244, ''Melanesia'');',
'insert into ptrail_locations (id, parent_id, location) values (250, 249, ''Fiji'');',
'insert into ptrail_locations (id, parent_id, location) values (251, 249, ''New Caledonia'');',
'insert into ptrail_locations (id, parent_id, location) values (252, 249, ''Papua New Guinea'');',
'insert into ptrail_locations (id, parent_id, location) values (253, 249, ''Solomon Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (254, 249, ''Vanuatu'');',
'insert into ptrail_locations (id, parent_id, location) values (255, 244, ''Micronesia'');',
'insert into ptrail_locations (id, parent_id, location) values (256, 255, ''Guam'');',
'insert into ptrail_locations (id, parent_id, location) values (257, 255, ''Kiribati'');',
'insert into ptrail_locations (id, parent_id, location) values (258, 255, ''Marshall Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (259, 255, ''Micronesia (Federated States of)'');',
'insert into ptrail_locations (id, parent_id, location) values (260, 255, ''Nauru'');',
'insert into ptrail_locations (id, parent_id, location) values (261, 255, ''Northern Mariana Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (262, 255, ''Palau'');',
'insert into ptrail_locations (id, parent_id, location) values (263, 244, ''Polynesia'');',
'insert into ptrail_locations (id, parent_id, location) values (264, 263, ''American Samoa'');',
'insert into ptrail_locations (id, parent_id, location) values (265, 263, ''Cook Islands'');',
'insert into ptrail_locations (id, parent_id, location) values (266, 263, ''French Polynesia'');',
'insert into ptrail_locations (id, parent_id, location) values (267, 263, ''Niue'');',
'insert into ptrail_locations (id, parent_id, location) values (268, 263, ''Pitcairn'');',
'insert into ptrail_locations (id, parent_id, location) values (269, 263, ''Samoa'');',
'insert into ptrail_locations (id, parent_id, location) values (270, 263, ''Tokelau'');',
'insert into ptrail_locations (id, parent_id, location) values (271, 263, ''Tonga'');',
'insert into ptrail_locations (id, parent_id, location) values (272, 263, ''Tuvalu'');',
'insert into ptrail_locations (id, parent_id, location) values (273, 263, ''Wallis and Futuna Islands'');',
'',
'-- populate employees --',
'',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (1, ''Edwin'', ''Abbott'', ''E_GFWRUDNKXN'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (2, ''Alex'', ''Adams'', ''E_EPQKQXKPIX'', 21, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (3, ''Johnnie'', ''Adams'', ''E_SIBIQJJICK'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (4, ''Gretchen'', ''Adkins'', ''E_OHYFDFUTBR'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (5, ''Sylvia'', ''Adkins'', ''E_KVDKCRMXAZ'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (6, ''William'', ''Adkins'', ''E_TDYAQODQDA'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (7, ''Ginger'', ''Aguilar'', ''E_XKEDXZCSJV'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (8, ''Guadalupe'', ''Aguilar'', ''E_YLQUWHEKPK'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (9, ''Nora'', ''Aguilar'', ''E_ZHUMWYLSWG'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (10, ''Tasha'', ''Aguilar'', ''E_JQVWJSQDSC'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (11, ''Kathleen'', ''Alexander'', ''E_ENJTMJQTMQ'', 43, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (12, ''Myron'', ''Alexander'', ''E_GZABWIFYBC'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (13, ''Myron'', ''Allen'', ''E_CQJLYYHHLG'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (14, ''Ryan'', ''Allen'', ''E_AYVOTIVITZ'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (15, ''Tabitha'', ''Allen'', ''E_UJSDUDISAX'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (16, ''Harry'', ''Allison'', ''E_OJQBAGZSYL'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (17, ''Kristopher'', ''Allison'', ''E_JLCTDQBXJG'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (18, ''Nathaniel'', ''Allison'', ''E_EABKBTYBGY'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (19, ''Teri'', ''Allison'', ''E_FDMJOTCHME'', 214, 1'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(5457611529305996)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'2);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (20, ''Cecil'', ''Alvarado'', ''E_VZKZLCPYUC'', 82, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (21, ''Roberto'', ''Alvarado'', ''E_MYXXRMLJJX'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (22, ''Ronnie'', ''Alvarado'', ''E_GXERFHUOSZ'', 210, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (23, ''Billie'', ''Alvarez'', ''E_IXPDCBRMCU'', 198, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (24, ''Karl'', ''Alvarez'', ''E_HRSADJYBRF'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (25, ''Lisa'', ''Alvarez'', ''E_PFIHTSVQJY'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (26, ''Jerry'', ''Anderson'', ''E_HONOMFBSHK'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (27, ''Derrick'', ''Andrews'', ''E_MKACPZVJFU'', 175, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (28, ''Jane'', ''Andrews'', ''E_AIDQKJOLNR'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (29, ''Ervin'', ''Armstrong'', ''E_XBEHAOEHAU'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (30, ''Tommy'', ''Armstrong'', ''E_NLKBIKIVFO'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (31, ''Eddie'', ''Arnold'', ''E_ECPWPQLMZV'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (32, ''Harriet'', ''Austin'', ''E_QGKVEAEXGQ'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (33, ''Oscar'', ''Austin'', ''E_JDEUVQHLFB'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (34, ''Sheryl'', ''Austin'', ''E_QLEFVGVOSG'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (35, ''Juan'', ''Bailey'', ''E_TTGXLAOMAG'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (36, ''Roberto'', ''Bailey'', ''E_BGSOZPCKGQ'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (37, ''Wm'', ''Baker'', ''E_NSDHELNCKS'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (38, ''Faye'', ''Baldwin'', ''E_YKALQFRENS'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (39, ''Ian'', ''Baldwin'', ''E_VLDBIJBGKL'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (40, ''Joy'', ''Baldwin'', ''E_DDDHORVDLT'', 43, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (41, ''Judy'', ''Baldwin'', ''E_NAHOLKGSBM'', 43, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (42, ''Ramon'', ''Baldwin'', ''E_FOGPQVCJYZ'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (43, ''Wallace'', ''Baldwin'', ''E_MYRRBCOUYA'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (44, ''Glenn'', ''Ball'', ''E_ILSIAIEEBV'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (45, ''Guadalupe'', ''Ball'', ''E_JBSGILPCQS'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (46, ''Kyle'', ''Ball'', ''E_JSXDWRCGAM'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (47, ''Cody'', ''Ballard'', ''E_ONNZNSCVJW'', 98, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (48, ''Jared'', ''Ballard'', ''E_GULCOWUEUR'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (49, ''Alice'', ''Banks'', ''E_PPJLXEASZK'', 21, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (50, ''Tracy'', ''Barber'', ''E_UOKEJSQBYO'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (51, ''Maria'', ''Barker'', ''E_ENSMGOIDTP'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (52, ''Lynne'', ''Barrett'', ''E_EVFOKMQAPQ'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (53, ''Jan'', ''Barton'', ''E_NMGDAOVDVF'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (54, ''Marty'', ''Barton'', ''E_NSZTANQTFQ'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (55, ''Robert'', ''Barton'', ''E_FIEEFIEUAK'', 238, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (56, ''Herbert'', ''Bass'', ''E_FVQTENAGUR'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (57, ''Blanche'', ''Bates'', ''E_OSQQCNJJGY'', 237, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (58, ''Denise'', ''Bates'', ''E_CFOKEMIHUU'', 175, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (59, ''Thomas'', ''Bates'', ''E_LWKUTBRFKM'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (60, ''Lindsay'', ''Beck'', ''E_GNOFPYSLTF'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (61, ''Luther'', ''Beck'', ''E_NRGWSNQSPV'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (62, ''Eunice'', ''Becker'', ''E_YKETNNXAXH'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (63, ''Kerry'', ''Becker'', ''E_GOUPUQZCNU'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (64, ''Laura'', ''Bennett'', ''E_BYQPFHBIGO'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (65, ''Erica'', ''Benson'', ''E_CRROWIQCBG'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (66, ''Jasmine'', ''Benson'', ''E_DEMRDHTDJE'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (67, ''Terry'', ''Benson'', ''E_TCHPECFWTU'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (68, ''Thomas'', ''Benson'', ''E_MOPXTHHFWA'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (69, ''Jasmine'', ''Berry'', ''E_AFCNZJNCUF'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (70, ''Roosevelt'', ''Berry'', ''E_CYDCYSDJIK'', 210, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (71, ''Ruben'', ''Berry'', ''E_EDAMZFQNLR'', 210, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (72, ''Noel'', ''Bishop'', ''E_YTVTIIPTFB'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (73, ''Neil'', ''Black'', ''E_BTTNWGACNE'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (74, ''Blake'', ''Blair'', ''E_LWMBYUUWXN'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (75, ''Hector'', ''Blair'', ''E_LXKWJFFTUJ'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (76, ''Lisa'', ''Blair'', ''E_LGVSNQBAQR'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (77, ''Josephine'', ''Blake'', ''E_ADKEHZOKFL'', 43, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (78, ''Mandy'', ''Blake'', ''E_DDJNZXQZRA'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (79, ''Julio'', ''Boone'', ''E_GHVKZBPLOI'', 43, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (80, ''Crystal'', ''Bowen'', ''E_CKKMLLXSOW'', 98, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (81, ''Marcella'', ''Bowen'', ''E_PGUKUXEUFL'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (82, ''Shawna'', ''Bowen'', ''E_LWQLXSQOSH'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (83, ''David'', ''Bowers'', ''E_XGNJJLRAOH'', 188, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (84, ''Gladys'', ''Bowers'', ''E_ODHAMAUTXH'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (85, ''Jay'', ''Bowers'', ''E_ZIBSKJVBSF'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (86, ''Earl'', ''Bowman'', ''E_IENUZGKKWO'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (87, ''Irvin'', ''Bowman'', ''E_JQNARZJZEO'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (88, ''Isaac'', ''Bowman'', ''E_TZTEVSXBRY'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (89, ''Lynn'', ''Bowman'', ''E_JMLARSNYIX'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (90, ''Kay'', ''Boyd'', ''E_GZYOZVROQE'', 43, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (91, ''Marilyn'', ''Boyd'', ''E_EEJMINDYWQ'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (92, ''Kelly'', ''Bradley'', ''E_BACRRRPAWJ'', 43, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (93, ''Patty'', ''Bradley'', ''E_FYEKZBOWFV'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (94, ''Salvatore'', ''Bradley'', ''E_UJEPSEMRIQ'', 214, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (95, ''Christopher'', ''Brady'', ''E_CRXFWPRIRK'', 98, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (96, ''Lee'', ''Brewer'', ''E_TFKYADGDIF'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (97, ''Maria'', ''Brewer'', ''E_OIIMBOKDNH'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (98, ''Shannon'', ''Brewer'', ''E_XBLYWDZJGD'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (99, ''Rebecca'', ''Bridges'', ''E_CVAOWFRHAS'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (100, ''Terri'', ''Bridges'', ''E_GCVAYVQOBR'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (101, ''Eileen'', ''Briggs'', ''E_HQVFQPIYZB'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (102, ''Elvira'', ''Briggs'', ''E_TRJTEHGYPB'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (103, ''Erika'', ''Briggs'', ''E_IJNSQIEZTM'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (104, ''Ignacio'', ''Briggs'', ''E_BHUIJYWAYF'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (105, ''Jacob'', ''Briggs'', ''E_GLKQTTLUEX'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (106, ''Scott'', ''Briggs'', ''E_QWPZSGBPVM'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (107, ''Ivan'', ''Brock'', ''E_DEORGXRMUE'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (108, ''Marlon'', ''Brock'', ''E_OUUPNIPUWP'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (109, ''Kelly'', ''Brooks'', ''E_CLUQAZTBAE'', 43, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (110, ''Veronica'', ''Brooks'', ''E_BCJFVAOMFO'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (111, ''Curtis'', ''Brown'', ''E_PJOOMZISUT'', 98, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (112, ''Donald'', ''Brown'', ''E_WXFJLNCXRD'', 175, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (113, ''Hope'', ''Bryan'', ''E_MWKOODWFUV'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (114, ''Dianna'', ''Bryant'', ''E_GZCNGFWEQR'', 175, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (115, ''Tina'', ''Bryant'', ''E_UZBFSKEEHJ'', 214, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (116, ''Della'', ''Buchanan'', ''E_VIBYZPWLPY'', 175, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (117, ''Gail'', ''Buchanan'', ''E_EUBVFMNBZH'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (118, ''Johnny'', ''Buchanan'', ''E_PZXQTGLDNC'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (119, ''Lloyd'', ''Buchanan'', ''E_ATVDIRXCPM'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (120, ''Glenn'', ''Burgess'', ''E_WAQLARUKVD'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (121, ''Timothy'', ''Burgess'', ''E_EJWDQBJZXQ'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (122, ''Carmen'', ''Burns'', ''E_CGBZANYOSC'', 237, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (123, ''Dolores'', ''Burns'', ''E_TLDLIHXNLC'', 175, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (124, ''Frank'', ''Burns'', ''E_QISWQOPOOF'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (125, ''Sean'', ''Burns'', ''E_ZBIZQXUWLQ'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (126, ''Salvatore'', ''Burton'', ''E_KEIPRWZHQD'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (127, ''Charlotte'', ''Bush'', ''E_FNXMYZDSIL'', 82, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (128, ''Nick'', ''Butler'', ''E_LUTFUIRBKM'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (129, ''Leland'', ''Byrd'', ''E_MDQSKHBXTM'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (130, ''Loretta'', ''Cain'', ''E_YAPNHMWBPY'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (131, ''Marcus'', ''Cain'', ''E_WIXKCQOVNU'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (132, ''Miguel'', ''Cain'', ''E_MWEQRGVRTR'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (133, ''Erick'', ''Caldwell'', ''E_HXZBNLTLIJ'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (134, ''Pat'', ''Caldwell'', ''E_MWHROVPZRQ'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (135, ''Bob'', ''Campbell'', ''E_OKCNNDODBQ'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (136, ''Gina'', ''Campbell'', ''E_LBEMHYCFGW'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (137, ''Sharon'', ''Campbell'', ''E_YARVZQEQVQ'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (138, ''Juan'', ''Carlson'', ''E_SROJSSJGOZ'', 43, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (139, ''Bernard'', ''Carpenter'', ''E_SVXOTPQVAK'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (140, ''Hazel'', ''Carpenter'', ''E_WHCBWARBNG'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (141, ''Lynne'', ''Carr'', ''E_NQUCLFPQJM'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (142, ''Harriet'', ''Carroll'', ''E_AKBVHUZMIK'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (143, ''Edna'', ''Casey'', ''E_CSPYTGNHMI'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (144, ''Angel'', ''Castillo'', ''E_AOREYDOPHO'', 198, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (145, ''Eduardo'', ''Castillo'', ''E_PWNFAFMDRE'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (146, ''Nicolas'', ''Castillo'', ''E_YQKCFCTVIM'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (147, ''Clara'', ''Castro'', ''E_KOVUHOWMOR'', 98, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (148, ''Pat'', ''Castro'', ''E_XFYFPEISWX'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (149, ''Leona'', ''Chambers'', ''E_BWMCEFGIHX'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (150, ''Enrique'', ''Chandler'', ''E_SMOIBIBZQK'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (151, ''Eric'', ''Chapman'', ''E_KJWWLCBTBZ'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (152, ''Lucia'', ''Chavez'', ''E_YASYTSRSVC'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (153, ''Arthur'', ''Christensen'', ''E_JDFNAPGDDY'', 198, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (154, ''Kenneth'', ''Christensen'', ''E_CEXZSORHDN'', 43, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (155, ''Lindsay'', ''Christensen'', ''E_PBEJEFMARM'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (156, ''Marie'', ''Christensen'', ''E_UGYAIXCDCE'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (157, ''Austin'', ''Clarke'', ''E_LMSBZDUFSK'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (158, ''Dewey'', ''Clarke'', ''E_QPQMDANHKV'', 175, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (159, ''Doyle'', ''Clarke'', ''E_TEDVJQFJCJ'', 175, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (160, ''Manuel'', ''Clarke'', ''E_TWJPOAEOJP'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (161, ''Calvin'', ''Clayton'', ''E_KMCUTAMFST'', 237, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (162, ''Jacob'', ''Clayton'', ''E_RJHADSRWHK'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (163, ''Jonathan'', ''Clayton'', ''E_YAWWFMONLD'', 43, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (164, ''Kristine'', ''Clayton'', ''E_LWBXBYQLKN'', 43, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (165, ''Sara'', ''Clayton'', ''E_QXGSOMRNLD'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (166, ''Eleanor'', ''Cobb'', ''E_ZQBNRPBDTB'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (167, ''Marie'', ''Cobb'', ''E_ZYFFGVWHLN'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (168, ''Patty'', ''Cobb'', ''E_ZYUGTUNMHO'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (169, ''Doyle'', ''Cohen'', ''E_XCYEPWKTFX'', 175, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (170, ''Margie'', ''Cohen'', ''E_PASWPMRQSW'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (171, ''Stuart'', ''Cole'', ''E_LADQDPVHAU'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (172, ''Antoinette'', ''Coleman'', ''E_TTJHYNHPSB'', 198, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (173, ''Diane'', ''Coleman'', ''E_DFEXPHOEOF'', 175, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (174, ''Maryann'', ''Coleman'', ''E_NTBIOIEWER'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (175, ''Robyn'', ''Coleman'', ''E_XPIKDIBTRL'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (176, ''Carrie'', ''Collier'', ''E_SDIWLACNWG'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (177, ''Elmer'', ''Collier'', ''E_REFSBNDUWJ'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (178, ''Delores'', ''Collins'', ''E_EWJMLKBFXN'', 175, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (179, ''Gregg'', ''Collins'', ''E_UZSZGPUBKI'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (180, ''Jon'', ''Collins'', ''E_TNSDEHRFTI'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (181, ''Antonio'', ''Conner'', ''E_UBSOAAAUOS'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (182, ''Hazel'', ''Conner'', ''E_GWRJRJLCKJ'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (183, ''Lucy'', ''Conner'', ''E_UTNWFAONHF'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (184, ''Leona'', ''Cook'', ''E_WOQGXWGGID'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (185, ''Victor'', ''Cook'', ''E_UKVZYXKHUX'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (186, ''Clark'', ''Cooper'', ''E_TZCNBMOPLS'', 98, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (187, ''Raquel'', ''Copeland'', ''E_ABWEKXPNCR'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (188, ''Edwin'', ''Cox'', ''E_SDRDSYXWHI'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (189, ''Peter'', ''Cox'', ''E_BRGPREMQZT'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (190, ''Sue'', ''Cox'', ''E_RNMMUCKJBY'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (191, ''Fred'', ''Craig'', ''E_IJKUXBVLAM'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (192, ''Lynn'', ''Craig'', ''E_ZZZWNPLFGZ'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (193, ''Manuel'', ''Crawford'', ''E_ZVCGPPVNTQ'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (194, ''Sylvester'', ''Cross'', ''E_ZWKHAYLOER'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (195, ''Tracey'', ''Cross'', ''E_ESXYZEMNDS'', 214, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (196, ''Desiree'', ''Cruz'', ''E_XEMMJGJPOD'', 175, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (197, ''Eddie'', ''Cruz'', ''E_TUWMQODKAG'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (198, ''Tim'', ''Cruz'', ''E_ENSNKIGGSC'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (199, ''Jim'', ''Cummings'', ''E_FXWVFCTRJP'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (200, ''Raquel'', ''Cummings'', ''E_NJDWLQCIUM'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (201, ''Ross'', ''Cummings'', ''E_WANRJIDPTO'', 210, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (202, ''Rachael'', ''Cunningham'', ''E_HRRKSDJJQF'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (203, ''Grady'', ''Curry'', ''E_KJAFGYTIIZ'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (204, ''Stanley'', ''Curry'', ''E_ZKWQQHSQTX'', 214, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (205, ''Austin'', ''Curtis'', ''E_DHTGNZRCKK'', 198, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (206, ''Linda'', ''Daniel'', ''E_INMPXKSOCV'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (207, ''Marcia'', ''Daniel'', ''E_ONUWAIBCZE'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (208, ''Ralph'', ''Daniel'', ''E_LGFPWKCFZB'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (209, ''Melinda'', ''Daniels'', ''E_TSBOIORHDX'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (210, ''Deanna'', ''Davis'', ''E_XWHPWJWRAB'', 188, 8);',
'insert into ptrail_employees (id, first_name, second_name, e'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(5457611529305996)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'mployee_id, location_id, business_id) values (211, ''Katrina'', ''Davis'', ''E_CYJEZFPDJI'', 43, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (212, ''Patty'', ''Davis'', ''E_PFJCURSJTG'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (213, ''Gina'', ''Day'', ''E_UVHDUFYIGC'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (214, ''Justin'', ''Dean'', ''E_LMKAVXUSLU'', 43, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (215, ''Norman'', ''Dean'', ''E_NGWTOGIQXK'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (216, ''Claudia'', ''Delgado'', ''E_TPVFROMFUG'', 98, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (217, ''Darin'', ''Delgado'', ''E_MPTROYVJZR'', 188, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (218, ''Rochelle'', ''Delgado'', ''E_ETJCEYQLYB'', 210, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (219, ''Dawn'', ''Dennis'', ''E_MRWGDUGUJB'', 188, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (220, ''Leigh'', ''Dennis'', ''E_SIVXEXCMQF'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (221, ''Jean'', ''Dixon'', ''E_RDUWJJHEGO'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (222, ''Ross'', ''Dixon'', ''E_FWJLPQIYFU'', 210, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (223, ''Beatrice'', ''Douglas'', ''E_EAOLEUFRRZ'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (224, ''Barbara'', ''Doyle'', ''E_NLRCSRXNIV'', 198, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (225, ''Bennie'', ''Doyle'', ''E_ZOCRTPKDMW'', 198, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (226, ''Heidi'', ''Duncan'', ''E_GVYMHTPXBA'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (227, ''Henry'', ''Duncan'', ''E_QXZVFKXXGC'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (228, ''Katrina'', ''Edwards'', ''E_TWXBRFLODX'', 43, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (229, ''Randy'', ''Edwards'', ''E_DPOZSAPEWG'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (230, ''Austin'', ''Elliott'', ''E_GYYWBUNROO'', 198, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (231, ''Felix'', ''Elliott'', ''E_FLHZJXJGLT'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (232, ''Jack'', ''Ellis'', ''E_YIRZIQGKTR'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (233, ''Sherman'', ''Ellis'', ''E_WIQTTUDVEE'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (234, ''Tyrone'', ''Ellis'', ''E_UIBBNGZIGW'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (235, ''Moses'', ''Erickson'', ''E_GDREFNULCJ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (236, ''Mathew'', ''Evans'', ''E_VRBFWSKEDE'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (237, ''Juana'', ''Farmer'', ''E_XXVJFKZFHM'', 43, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (238, ''Marshall'', ''Farmer'', ''E_JXFIINETQJ'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (239, ''Otis'', ''Farmer'', ''E_FLRYUIHTFV'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (240, ''Ida'', ''Ferguson'', ''E_OYKOAEPAPD'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (241, ''Kellie'', ''Fernandez'', ''E_NRNCMUYUAI'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (242, ''Lindsey'', ''Fernandez'', ''E_NKYISSHPIQ'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (243, ''Maurice'', ''Fernandez'', ''E_JZBFOZTALU'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (244, ''Armando'', ''Fields'', ''E_GAKHTXYJVN'', 198, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (245, ''Neil'', ''Fields'', ''E_BBTCWDQKAF'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (246, ''Rochelle'', ''Fields'', ''E_MZZESFPKGY'', 210, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (247, ''Eunice'', ''Figueroa'', ''E_QMRQTYBRKP'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (248, ''Janet'', ''Figueroa'', ''E_SWIFKITLBW'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (249, ''Sherri'', ''Figueroa'', ''E_GZTSOGITXA'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (250, ''Rogelio'', ''Fisher'', ''E_GGNBOKFHFA'', 210, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (251, ''Regina'', ''Fitzgerald'', ''E_KCEILSYWIC'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (252, ''Yvonne'', ''Fitzgerald'', ''E_YGGRVGUBSI'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (253, ''Alex'', ''Fleming'', ''E_MBFITFIPKF'', 21, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (254, ''Doug'', ''Fletcher'', ''E_XVMPTEZXQF'', 175, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (255, ''Jean'', ''Flores'', ''E_EFIKRMOJQS'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (256, ''Kimberly'', ''Floyd'', ''E_IGDILEJSEY'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (257, ''Amelia'', ''Foster'', ''E_HWCMXMYSHW'', 198, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (258, ''Shelly'', ''Foster'', ''E_MNPCWMTQOB'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (259, ''Brenda'', ''Fowler'', ''E_BGIEGIPEJH'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (260, ''Cody'', ''Fowler'', ''E_GNFNZXOSIN'', 98, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (261, ''Dominic'', ''Fox'', ''E_ZRAUIZXFPS'', 175, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (262, ''Elsie'', ''Fox'', ''E_DTSSUABNFF'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (263, ''Shelly'', ''Fox'', ''E_YHVVYRRCUE'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (264, ''Erma'', ''Francis'', ''E_RBJYUUBIEL'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (265, ''Guadalupe'', ''Francis'', ''E_YGEIEHUIVC'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (266, ''Lorene'', ''Francis'', ''E_IRZYWRTHFT'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (267, ''Amber'', ''Frank'', ''E_VFGESNZLTQ'', 198, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (268, ''Christian'', ''Franklin'', ''E_LNCDNPLDWB'', 82, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (269, ''Salvatore'', ''Franklin'', ''E_UVOEMTWZBG'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (270, ''Sophia'', ''Franklin'', ''E_YQWSYNXZKQ'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (271, ''Jenna'', ''Frazier'', ''E_PTPGKSPHXC'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (272, ''Jill'', ''Frazier'', ''E_AFVBQVTGMQ'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (273, ''Deanna'', ''Freeman'', ''E_LJYYGJBTXD'', 175, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (274, ''Elisa'', ''Freeman'', ''E_YBYDZERYJF'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (275, ''Reginald'', ''Freeman'', ''E_GHYHEPTEBW'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (276, ''Francisco'', ''French'', ''E_CKTKHRGGOI'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (277, ''Amos'', ''Fuller'', ''E_LDSESYMJHG'', 198, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (278, ''Brooke'', ''Garcia'', ''E_WVNIPHBUJE'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (279, ''Leigh'', ''Garcia'', ''E_IIATHLOREW'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (280, ''Maggie'', ''Gardner'', ''E_NTDMPURBQB'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (281, ''Brandon'', ''Garner'', ''E_QWSJTSHSZZ'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (282, ''Caroline'', ''Garrett'', ''E_OPXRFFXNUO'', 237, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (283, ''Martha'', ''Garrett'', ''E_AXXCESOWHX'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (284, ''Mitchell'', ''Garrett'', ''E_WNAEWXBTKC'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (285, ''Archie'', ''Garza'', ''E_XCGBVELPXQ'', 198, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (286, ''Olive'', ''George'', ''E_MXTCLYBRDF'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (287, ''Ronald'', ''George'', ''E_PYCXKGRXGN'', 210, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (288, ''Doug'', ''Gibbs'', ''E_WAVZXPKNMM'', 175, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (289, ''Rosemary'', ''Gibson'', ''E_ZNPCUQICMB'', 210, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (290, ''Roxanne'', ''Gibson'', ''E_TBRIZTDZBP'', 210, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (291, ''Lamar'', ''Gill'', ''E_JJAUELBLMB'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (292, ''Stanley'', ''Gill'', ''E_KQPAALXWAD'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (293, ''Damon'', ''Gomez'', ''E_DQBKLJXAQC'', 188, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (294, ''Francis'', ''Gomez'', ''E_EOEBNBVUXJ'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (295, ''Katie'', ''Gomez'', ''E_YTCPALNIJO'', 43, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (296, ''Alejandro'', ''Gonzales'', ''E_DRRFCWRHVZ'', 21, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (297, ''Desiree'', ''Gonzales'', ''E_KLHRXGSOSP'', 175, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (298, ''Martha'', ''Gonzales'', ''E_XGTHWXHZJE'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (299, ''Nina'', ''Gonzales'', ''E_QTBKAUITBL'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (300, ''Curtis'', ''Gonzalez'', ''E_EHCFJHANRH'', 98, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (301, ''Mattie'', ''Gonzalez'', ''E_HAOCWSIEIK'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (302, ''Bobbie'', ''Goodwin'', ''E_ANVYNQRZWF'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (303, ''Homer'', ''Goodwin'', ''E_GJOOUWUXIB'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (304, ''Isaac'', ''Goodwin'', ''E_MUFVQBCZDR'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (305, ''Margaret'', ''Goodwin'', ''E_CKOAPSDWKJ'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (306, ''Jenny'', ''Graham'', ''E_BCSGYXTIRZ'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (307, ''Johnny'', ''Graham'', ''E_QZEAYSFZVM'', 43, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (308, ''Hope'', ''Grant'', ''E_NEXEBNGHKA'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (309, ''Naomi'', ''Grant'', ''E_BOHPMCWSBM'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (310, ''Vickie'', ''Grant'', ''E_HFJUICVFOH'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (311, ''Maryann'', ''Graves'', ''E_EZAMFREKEJ'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (312, ''Rose'', ''Graves'', ''E_WRPDHUGWLC'', 210, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (313, ''Gerardo'', ''Green'', ''E_GOVPAGROAW'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (314, ''Marcus'', ''Green'', ''E_BMXWUFNXEQ'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (315, ''Patsy'', ''Green'', ''E_IUPDOXUIJR'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (316, ''Jose'', ''Greene'', ''E_KWPAONUDLB'', 43, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (317, ''Myrtle'', ''Greene'', ''E_GZEFPEZMCL'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (318, ''Felix'', ''Greer'', ''E_JPNRDYLRNV'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (319, ''Raul'', ''Greer'', ''E_IIQWSHEDHP'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (320, ''Seth'', ''Greer'', ''E_YRDRBSYSZI'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (321, ''Evan'', ''Griffin'', ''E_DDCDYACQML'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (322, ''Gayle'', ''Griffin'', ''E_WRBPTCSKMT'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (323, ''Earl'', ''Guerrero'', ''E_SYRFMRNHOU'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (324, ''Hattie'', ''Guerrero'', ''E_NVHSZZOQEX'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (325, ''Henry'', ''Guerrero'', ''E_YQUACOBUMT'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (326, ''Leo'', ''Guerrero'', ''E_MAGPFQGVCF'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (327, ''Rogelio'', ''Guerrero'', ''E_PRTCGQUXVK'', 210, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (328, ''Kendra'', ''Gutierrez'', ''E_WEGEGXCUAO'', 43, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (329, ''Michael'', ''Gutierrez'', ''E_MOMFBFYQHX'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (330, ''Morris'', ''Gutierrez'', ''E_GAFUZAIMTI'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (331, ''Penny'', ''Guzman'', ''E_ETHDYOMPTH'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (332, ''Alberta'', ''Hale'', ''E_SEDLLEVMPB'', 21, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (333, ''Jeremy'', ''Hall'', ''E_JGKZDFJFUL'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (334, ''Billy'', ''Hamilton'', ''E_LEKEPJZSTU'', 237, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (335, ''Camille'', ''Hamilton'', ''E_KJHZADXRLM'', 237, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (336, ''Georgia'', ''Hampton'', ''E_ZBGDXJDCNQ'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (337, ''Wm'', ''Hansen'', ''E_CQOUJHUIUF'', 214, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (338, ''Billie'', ''Hardy'', ''E_KPYUBVTSNW'', 237, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (339, ''Dianna'', ''Harmon'', ''E_CCNXPURJFN'', 175, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (340, ''Jane'', ''Harmon'', ''E_ZIHIDPYRFA'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (341, ''Leo'', ''Harmon'', ''E_YGOETSXYZV'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (342, ''Crystal'', ''Harper'', ''E_EFBCLGVCLM'', 98, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (343, ''Kim'', ''Harper'', ''E_FOKNFXUXCF'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (344, ''Robyn'', ''Harper'', ''E_XMCKTRFUCC'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (345, ''Ernesto'', ''Harrington'', ''E_TVYTBUUSRU'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (346, ''Silvia'', ''Harrington'', ''E_OKVXXGUZNF'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (347, ''Alexander'', ''Harrison'', ''E_UWUIMXWAVN'', 21, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (348, ''Alfonso'', ''Harrison'', ''E_CZJJRFZWKS'', 21, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (349, ''Jana'', ''Harrison'', ''E_SFGCMLYOTS'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (350, ''Candace'', ''Hawkins'', ''E_DKAIFUIVPY'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (351, ''Ernest'', ''Hayes'', ''E_YSIVXDXBZM'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (352, ''Hugo'', ''Hayes'', ''E_DTMFTPUAOT'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (353, ''Jimmie'', ''Haynes'', ''E_AJAFGIKAUW'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (354, ''Lauren'', ''Haynes'', ''E_KWUZTFOUII'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (355, ''Natasha'', ''Haynes'', ''E_CXLYYDQVJQ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (356, ''Taylor'', ''Haynes'', ''E_OLULHWLSSN'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (357, ''Erick'', ''Henry'', ''E_KGXOMHRNZM'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (358, ''Kristin'', ''Henry'', ''E_TJGBSBAWHL'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (359, ''Brent'', ''Hernandez'', ''E_CYISXXSUZO'', 237, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (360, ''Gerardo'', ''Herrera'', ''E_REPDORILSJ'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (361, ''Wilbert'', ''Herrera'', ''E_UZLJLEWLWI'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (362, ''Franklin'', ''Hicks'', ''E_KOWYFJZBRV'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (363, ''Roman'', ''Hicks'', ''E_IWRLDMOEIM'', 210, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (364, ''Rickey'', ''Higgins'', ''E_VCCRWGWYUH'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (365, ''Lindsay'', ''Hill'', ''E_XITAIGROMJ'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (366, ''Marshall'', ''Hill'', ''E_DNUDHRRCVX'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (367, ''Cary'', ''Hines'', ''E_HITIPZLPNA'', 237, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (368, ''Rogelio'', ''Hines'', ''E_LBAEZTYWJZ'', 210, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (369, ''Brittany'', ''Hodges'', ''E_XDNDFYEAYF'', 237, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (370, ''Candice'', ''Hodges'', ''E_MQPSCUPFYD'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (371, ''Joey'', ''Hodges'', ''E_LYRRCBHVZQ'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (372, ''Abraham'', ''Hoffman'', ''E_FFAYPJZNER'', 21, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (373, ''Marlene'', ''Hoffman'', ''E_MYLIYLTKHA'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (374, ''Molly'', ''Hoffman'', ''E_YLJXKJLTJP'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (375, ''Rhonda'', ''Hogan'', ''E_IQPOHONZLF'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (376, ''Brooke'', ''Holland'', ''E_BHFFNDUOTC'', 237, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (377, ''Dominick'', ''Holland'', ''E_OTZQPZAJSM'', 175, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (378, ''Jessie'', ''Holland'', ''E_XWQFQPNLSS'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (379, ''Jeffrey'', ''Holloway'', ''E_BRFLKKYIVU'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (380, ''Maryann'', ''Holloway'', ''E_CBPHQXUKBC'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (381, ''Rick'', ''Holloway'', ''E_YHNYROVMGQ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (382, ''Tracy'', ''Holmes'', ''E_MJBZLRWAUO'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (383, ''Benny'', ''Hopkins'', ''E_WSHFKVLRHH'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (384, ''Felipe'', ''Hopkins'', ''E_EESJDCXAPY'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (385, ''Krystal'', ''Hopkins'', ''E_BLTJIRDHJS'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (386, ''Jesse'', ''Houston'', ''E_SZULOPPTWB'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (387, ''Irvin'', ''Howard'', ''E_VAYCJHORGE'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (388, ''Pat'', ''Howard'', ''E_IYSJADMMOB'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (389, ''Candice'', ''Hubbard'', ''E_ZRFUXKQZMF'', 237, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (390, ''Ginger'', ''Hubbard'', ''E_UDHEXDAPNY'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (391, ''Stephen'', ''Hubbard'', ''E_DHQZQLLJEK'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (392, ''Sean'', ''Hudson'', ''E_AWCJDJEIHJ'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (393, ''Georgia'', ''Huff'', ''E_RHZUJKXSIH'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (394, ''Claude'', ''Hughes'', ''E_AFXPAXTHBX'', 98, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (395, ''Dustin'', ''Hughes'', ''E_OXZPKQJREK'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (396, ''May'', ''Hughes'', ''E_WBLYNFLJCZ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (397, ''Vickie'', ''Hughes'', ''E_OYVAWNFLUJ'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (398, ''Leroy'', ''Hunt'', ''E_TMFGORUWON'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (399, ''Cedric'', ''Hunter'', ''E_ARUYUTFBXY'', 82, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (400, ''Mindy'', ''Hunter'', ''E_MORPEPYHGQ'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (401, '''))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(5457611529305996)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Stanley'', ''Hunter'', ''E_LFSNPAIDNZ'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (402, ''Ana'', ''Ingram'', ''E_EAXNZVIFSZ'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (403, ''Pearl'', ''Ingram'', ''E_ASHAGDMHNH'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (404, ''Frankie'', ''Jackson'', ''E_QXEQTNGCFF'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (405, ''Taylor'', ''Jackson'', ''E_BUQQUGXECV'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (406, ''Wilbert'', ''Jackson'', ''E_HSPRZBMNXJ'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (407, ''Willis'', ''Jacobs'', ''E_WMGKNKEMJA'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (408, ''Bryan'', ''James'', ''E_YQXMSLIEID'', 237, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (409, ''Shelia'', ''James'', ''E_RGDQRFIAZV'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (410, ''Timmy'', ''James'', ''E_RQTEPVKZXM'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (411, ''Cora'', ''Jefferson'', ''E_ZHDGFBFIMK'', 98, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (412, ''Janis'', ''Jefferson'', ''E_LCLXDXVVPO'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (413, ''Benjamin'', ''Jenkins'', ''E_NHQJNZQWJK'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (414, ''Esther'', ''Jenkins'', ''E_GOSSUCCDFV'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (415, ''Darren'', ''Jennings'', ''E_LOTQBLEKGC'', 188, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (416, ''Lee'', ''Jimenez'', ''E_DDVHVTVPAI'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (417, ''Lisa'', ''Johnson'', ''E_WVVMXLSYOI'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (418, ''Luke'', ''Johnson'', ''E_DKUMTWFSPX'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (419, ''Opal'', ''Johnson'', ''E_EVLTUWKTFU'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (420, ''Ramiro'', ''Johnson'', ''E_QIEGTGQESC'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (421, ''Bert'', ''Johnston'', ''E_KNPBJZVZYK'', 198, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (422, ''Donnie'', ''Johnston'', ''E_IOSONBKAQX'', 175, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (423, ''Olivia'', ''Johnston'', ''E_EHAYCLQVRI'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (424, ''Benny'', ''Jones'', ''E_FVKJCXIIJA'', 198, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (425, ''Katrina'', ''Jones'', ''E_VDCMSXPUWK'', 43, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (426, ''Harry'', ''Jordan'', ''E_XFBGTEROEA'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (427, ''Amy'', ''Joseph'', ''E_JLOMVYAUMO'', 198, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (428, ''Bethany'', ''Joseph'', ''E_LQQPGYHATU'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (429, ''Kevin'', ''Joseph'', ''E_KCPAVMCRQA'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (430, ''Nina'', ''Keller'', ''E_MALBBGHONQ'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (431, ''Alicia'', ''Kelly'', ''E_ZZDHSRVJTK'', 21, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (432, ''Jasmine'', ''Kelly'', ''E_JBVENVXSFS'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (433, ''Krystal'', ''Kelly'', ''E_LDTHONGNAL'', 43, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (434, ''Charlene'', ''Kennedy'', ''E_PUAZKPTRRC'', 82, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (435, ''Danielle'', ''Kennedy'', ''E_LZYHIGIGAJ'', 188, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (436, ''Joanne'', ''Kim'', ''E_GIAHLANQOT'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (437, ''Josephine'', ''Kim'', ''E_DRLLODYXNJ'', 43, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (438, ''Rochelle'', ''King'', ''E_GHRTBKDWFY'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (439, ''Anita'', ''Klein'', ''E_CJLXDOIDEG'', 198, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (440, ''Garry'', ''Klein'', ''E_SBMZCRLDTC'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (441, ''Jacquelyn'', ''Klein'', ''E_OJVCFNEDZH'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (442, ''Sylvester'', ''Klein'', ''E_ZICVHKVLDF'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (443, ''Leslie'', ''Knight'', ''E_MYMKSVDUKC'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (444, ''Claire'', ''Lamb'', ''E_MAQEUBJVBM'', 98, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (445, ''Loretta'', ''Lamb'', ''E_LPYRMPYUVR'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (446, ''Dan'', ''Lambert'', ''E_DWDGSSOINT'', 188, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (447, ''Lillian'', ''Lambert'', ''E_DIXWWYJRVV'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (448, ''Olive'', ''Larson'', ''E_WIBWXJZXTX'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (449, ''Clifton'', ''Lawson'', ''E_MYOLEYXDVZ'', 98, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (450, ''Melissa'', ''Lawson'', ''E_RMSAKFYVQY'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (451, ''Nicole'', ''Lawson'', ''E_FBIIWVZZGR'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (452, ''Marcos'', ''Lee'', ''E_GUUDAUTGAU'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (453, ''Camille'', ''Leonard'', ''E_OVWCNDBFVK'', 237, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (454, ''Deanna'', ''Leonard'', ''E_NWCFBLNYIL'', 175, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (455, ''Santiago'', ''Leonard'', ''E_JXQCVXGGUE'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (456, ''Tracy'', ''Leonard'', ''E_GAGFLOIMFB'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (457, ''Blanche'', ''Lindsey'', ''E_HNVJHKXMYK'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (458, ''Tomas'', ''Lindsey'', ''E_RROGKKIYYJ'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (459, ''Blake'', ''Little'', ''E_FLVPCFYCIX'', 237, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (460, ''Earnest'', ''Little'', ''E_MLCBKGNXBM'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (461, ''Shelley'', ''Little'', ''E_UZRUZCDLCV'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (462, ''Benny'', ''Lloyd'', ''E_WHUIOBLKZD'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (463, ''Lionel'', ''Lloyd'', ''E_DHAOWRUEDK'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (464, ''Gary'', ''Logan'', ''E_HVZLNLNNRW'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (465, ''Shari'', ''Logan'', ''E_GHAVTCEWTY'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (466, ''Sharon'', ''Logan'', ''E_NBJTIUUCAH'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (467, ''Jerald'', ''Long'', ''E_IBDIPQPNBP'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (468, ''Wilfred'', ''Long'', ''E_XDYYJKSWYY'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (469, ''John'', ''Lopez'', ''E_CWQNJIWCPA'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (470, ''Freda'', ''Love'', ''E_UWETZJVZYV'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (471, ''Renee'', ''Lowe'', ''E_GLMEUTNWWF'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (472, ''Adam'', ''Lucas'', ''E_JYQIVGACAM'', 21, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (473, ''Joe'', ''Lucas'', ''E_KIXKVOYZCU'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (474, ''Mary'', ''Luna'', ''E_LBZKQFMVBN'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (475, ''Melba'', ''Luna'', ''E_CJQFDDRLOY'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (476, ''Kathy'', ''Lyons'', ''E_WBHDHAZPBK'', 43, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (477, ''Anthony'', ''Mack'', ''E_TOJUKUJIQP'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (478, ''Houston'', ''Magewi'', ''E_WUTMZWRVDP'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (479, ''Emma'', ''Maldonado'', ''E_VHNOBSPVTC'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (480, ''Sheila'', ''Maldonado'', ''E_VBSSBWADEG'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (481, ''Darrel'', ''Malone'', ''E_JWFXXRBPAF'', 188, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (482, ''Eddie'', ''Malone'', ''E_ESWGNSLARB'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (483, ''Claudia'', ''Mann'', ''E_CCXMEXBHYN'', 98, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (484, ''Jordan'', ''Mann'', ''E_PKDKYWMTOK'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (485, ''Cora'', ''Manning'', ''E_AUXCZSWHPU'', 98, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (486, ''Terry'', ''Manning'', ''E_BIHSBFJVCI'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (487, ''Neal'', ''Marsh'', ''E_DXEFYWEBYV'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (488, ''Timmy'', ''Marsh'', ''E_ECRQCWFRAM'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (489, ''Todd'', ''Marshall'', ''E_TLIJTUNYVP'', 214, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (490, ''Amber'', ''Martinez'', ''E_FBIDGXIWVG'', 198, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (491, ''Jonathan'', ''Martinez'', ''E_LZIHLPHTEC'', 43, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (492, ''Alex'', ''Mason'', ''E_UDUPZYQMJA'', 21, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (493, ''Andy'', ''Mason'', ''E_OZQHKWMYFN'', 198, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (494, ''Wanda'', ''Mason'', ''E_DNCXTKEFKK'', 214, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (495, ''Carroll'', ''Massey'', ''E_VTTFHSNUIR'', 237, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (496, ''Myron'', ''Massey'', ''E_NSTOKRPPTK'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (497, ''Betsy'', ''Mathis'', ''E_ECGPUBUSOR'', 198, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (498, ''Betty'', ''Mathis'', ''E_AEZNPAVNOM'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (499, ''Calvin'', ''Maxwell'', ''E_BDRWSPGVMY'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (500, ''Clifford'', ''Maxwell'', ''E_UKBYBLLOBI'', 98, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (501, ''Dolores'', ''Maxwell'', ''E_YICRSHTBKN'', 175, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (502, ''Lee'', ''Maxwell'', ''E_CMBHIYVAPC'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (503, ''Milton'', ''Maxwell'', ''E_PJWZLCOWXG'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (504, ''Dustin'', ''Mcbride'', ''E_ZDRQIHMSZW'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (505, ''Louis'', ''Mcbride'', ''E_EKHHOBRSHQ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (506, ''April'', ''Mccarthy'', ''E_SUOSMACGBM'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (507, ''Carol'', ''Mccarthy'', ''E_MIWVWSRLJK'', 237, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (508, ''Chester'', ''Mccarthy'', ''E_VVKWJYGKCS'', 82, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (509, ''Ellis'', ''Mccarthy'', ''E_KNOLLMNHHG'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (510, ''Velma'', ''Mccarthy'', ''E_FBOMGTFXNY'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (511, ''Bennie'', ''Mccormick'', ''E_BLVZFSZFHO'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (512, ''Jo'', ''Mccormick'', ''E_DRMWSAGVTD'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (513, ''Louise'', ''Mccormick'', ''E_XBFTWXEMYY'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (514, ''Randall'', ''Mccormick'', ''E_QLQPBSZJFW'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (515, ''Florence'', ''Mccoy'', ''E_DEKULHDDAR'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (516, ''Jasmine'', ''Mccoy'', ''E_MRLCYLQWBM'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (517, ''Ronald'', ''Mccoy'', ''E_LNEXLPNPJH'', 210, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (518, ''Wilma'', ''Mccoy'', ''E_VJQVIDKEGK'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (519, ''Molly'', ''Mcdaniel'', ''E_WVSFZKNRHI'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (520, ''Wendy'', ''Mcdaniel'', ''E_LRKLBJIYOH'', 214, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (521, ''Elbert'', ''Mcdonald'', ''E_EBERSXQGRX'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (522, ''Heather'', ''Mcdonald'', ''E_BSSNIOIERF'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (523, ''Lynette'', ''Mcdonald'', ''E_YAPJJNGVUV'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (524, ''Fernando'', ''Mcgee'', ''E_EXQURGGFFG'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (525, ''Darrin'', ''Mcguire'', ''E_QQNQGPWTTU'', 188, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (526, ''Douglas'', ''Mcguire'', ''E_BNGKFGNCUJ'', 175, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (527, ''Molly'', ''Mcguire'', ''E_QZAAYRLCXY'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (528, ''Dorothy'', ''Mckenzie'', ''E_TPYPWLECRZ'', 175, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (529, ''Nelson'', ''Mckenzie'', ''E_NNLNGQHHQU'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (530, ''Francis'', ''Mckinney'', ''E_FOVYQBYOFJ'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (531, ''Gordon'', ''Mckinney'', ''E_BNLNCGECYU'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (532, ''Sarah'', ''Mckinney'', ''E_XDPFNXFIUC'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (533, ''Kathy'', ''Mclaughlin'', ''E_GUIAGXZQJP'', 43, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (534, ''Monica'', ''Mclaughlin'', ''E_CRDPAWXOVE'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (535, ''Horace'', ''Medina'', ''E_FQKVIHTENP'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (536, ''Sharon'', ''Medina'', ''E_VCSLGSEEKU'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (537, ''Kellie'', ''Mendez'', ''E_WQHSTTCMFB'', 43, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (538, ''Sherman'', ''Mendoza'', ''E_SNQTINTWHG'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (539, ''Andrea'', ''Meyer'', ''E_PPLDIJWKKP'', 198, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (540, ''Elvira'', ''Meyer'', ''E_QLQBFHVXYQ'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (541, ''Jonathon'', ''Meyer'', ''E_FKHFOTHOVN'', 43, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (542, ''Lucy'', ''Meyer'', ''E_TCFCZDNVBG'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (543, ''Madeline'', ''Miles'', ''E_MPBLOTMYQY'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (544, ''Christopher'', ''Mills'', ''E_NNTQQWTXZV'', 82, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (545, ''Hector'', ''Mitchell'', ''E_EWZBNTGSIH'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (546, ''Ivan'', ''Montgomery'', ''E_JLMCALBACN'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (547, ''Lela'', ''Montgomery'', ''E_LOLIYYAFAY'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (548, ''Eleanor'', ''Moody'', ''E_ZRKWSISABR'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (549, ''Jasmine'', ''Moore'', ''E_GZOYPCGCDS'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (550, ''Kay'', ''Moore'', ''E_LHVGOQRSJW'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (551, ''Mario'', ''Moore'', ''E_JOJTJLIOTR'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (552, ''Louis'', ''Morales'', ''E_DRIUGBTEPE'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (553, ''Nancy'', ''Moran'', ''E_YALCLYZPJZ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (554, ''Patti'', ''Moran'', ''E_USBHAQJOQF'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (555, ''Robin'', ''Moran'', ''E_VIKEJMXSIN'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (556, ''Kristin'', ''Morris'', ''E_UBDPTWGZSZ'', 43, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (557, ''Lyle'', ''Morris'', ''E_YRLMRUVGPN'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (558, ''Miriam'', ''Morris'', ''E_ZBLHUEVIWV'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (559, ''Nichole'', ''Morrison'', ''E_BFVSILOTKZ'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (560, ''Rosalie'', ''Morrison'', ''E_ZASNKLXVWM'', 210, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (561, ''Andres'', ''Morton'', ''E_SGUIERVKWF'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (562, ''Frederick'', ''Morton'', ''E_FAZPXOZACT'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (563, ''Lynn'', ''Morton'', ''E_JZIQJXFNRM'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (564, ''Ignacio'', ''Moss'', ''E_YHCMQLCNME'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (565, ''Marion'', ''Mullins'', ''E_SGILQIMIED'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (566, ''Rosemary'', ''Mullins'', ''E_UQFHCKTJYK'', 210, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (567, ''Stewart'', ''Mullins'', ''E_PSBTDZQXEO'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (568, ''Mandy'', ''Munoz'', ''E_FWTRNONXBF'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (569, ''Tracy'', ''Munoz'', ''E_ZPVLUQGGKE'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (570, ''Byron'', ''Murray'', ''E_LIKPZFANGL'', 237, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (571, ''Shawna'', ''Murray'', ''E_ZMUUFANRBZ'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (572, ''Wilfred'', ''Murray'', ''E_RGEECMWRBU'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (573, ''Colin'', ''Nash'', ''E_EDRANAFTZG'', 98, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (574, ''Joanna'', ''Nash'', ''E_RWXZMXXDQY'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (575, ''Joanna'', ''Nash'', ''E_XWPZLHNGCK'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (576, ''Angie'', ''Neal'', ''E_LFNXSFUQRZ'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (577, ''Clinton'', ''Neal'', ''E_DNRCWDNIAG'', 98, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (578, ''Juana'', ''Neal'', ''E_LUOFRODSTO'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (579, ''Lance'', ''Neal'', ''E_PJEDXJLCRT'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (580, ''Laura'', ''Nelson'', ''E_KAONWHCEXT'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (581, ''Richard'', ''Newman'', ''E_IXPZZKLQMI'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (582, ''Ruth'', ''Newman'', ''E_AODTMVATGI'', 214, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (583, ''Erica'', ''Newton'', ''E_WZKDKWPOOS'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (584, ''Merle'', ''Newton'', ''E_JOUUIROODE'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (585, ''Delia'', ''Nguyen'', ''E_SPCTAYIVNE'', 175, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (586, ''Lee'', ''Nguyen'', ''E_QOQJUPLIWM'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (587, ''Max'', ''Nguyen'', ''E_AMWTURJJJF'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (588, ''Blanca'', ''Nichols'', ''E_ODQNYAZXMU'', 237, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (589, ''Rosie'', ''Nichols'', ''E_VJCFUPJZVQ'', 210, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (590, ''Ashley'', ''Norman'', ''E_OJGLURZFKR'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (591, ''Erin'', ''Norris'', ''E_ZWMOTQDLZF'', 110, 10);',
'insert into ptrail_employees (id, first_name, secon'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(5457611529305996)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'd_name, employee_id, location_id, business_id) values (592, ''Phillip'', ''Norris'', ''E_JTLSQQGPYF'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (593, ''Eric'', ''Norton'', ''E_BWVTUREGXY'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (594, ''Genevieve'', ''Norton'', ''E_UZHPWPXOPF'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (595, ''Hubert'', ''Nunez'', ''E_MEVTDXQAEH'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (596, ''Hugo'', ''Nunez'', ''E_LZVMMQLXGB'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (597, ''Marie'', ''Obrien'', ''E_LPKSUUWRPV'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (598, ''Vanessa'', ''Obrien'', ''E_BKTHSXKSWB'', 214, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (599, ''Phyllis'', ''Oliver'', ''E_VOHAXXSZLO'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (600, ''Shawn'', ''Olson'', ''E_BNKPWNVGAG'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (601, ''Roxanne'', ''Ortega'', ''E_GOYVNJHOGI'', 210, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (602, ''Sonia'', ''Ortega'', ''E_WWESYNSYEI'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (603, ''Benjamin'', ''Ortiz'', ''E_PSRCAIBZXF'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (604, ''Katie'', ''Ortiz'', ''E_DMCCANMSDC'', 43, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (605, ''Rick'', ''Ortiz'', ''E_TWNIWFWREH'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (606, ''Shannon'', ''Owen'', ''E_EALYGAUHRQ'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (607, ''Terrence'', ''Owen'', ''E_WPANTRMGPB'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (608, ''Kerry'', ''Owens'', ''E_PWFYEOSXLK'', 43, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (609, ''Tom'', ''Owens'', ''E_HGTZQXMVVK'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (610, ''Edgar'', ''Padilla'', ''E_SDFTAJNVPM'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (611, ''Leslie'', ''Padilla'', ''E_VYVMYRFMYM'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (612, ''Phillip'', ''Padilla'', ''E_DZAPJLZJJM'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (613, ''Sonya'', ''Padilla'', ''E_MJYASJAWEI'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (614, ''Steve'', ''Padilla'', ''E_VVSXREROJV'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (615, ''Merle'', ''Page'', ''E_XECENLXHMG'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (616, ''Brenda'', ''Palmer'', ''E_ZDAXGIQQDH'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (617, ''Herbert'', ''Palmer'', ''E_HTBAOIKAHU'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (618, ''Jerry'', ''Palmer'', ''E_IARGUINGWL'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (619, ''Guillermo'', ''Park'', ''E_QTZFZCERFX'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (620, ''Marcella'', ''Park'', ''E_RJCDISTEBS'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (621, ''Roy'', ''Park'', ''E_EQKLCESGUO'', 210, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (622, ''Frankie'', ''Parker'', ''E_XHFIZKSPED'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (623, ''Rufus'', ''Parker'', ''E_RIGEAVGJOU'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (624, ''Elias'', ''Parks'', ''E_MGSHVVQFUL'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (625, ''Shane'', ''Parks'', ''E_MEKDCHUJVE'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (626, ''Merle'', ''Parsons'', ''E_AJYHYPCSKQ'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (627, ''Edna'', ''Patterson'', ''E_XSKEQBCNNK'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (628, ''Pablo'', ''Patterson'', ''E_NZZWCZMSEZ'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (629, ''Ashley'', ''Patton'', ''E_SUSDDUTPMH'', 198, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (630, ''Jill'', ''Patton'', ''E_XNOVSIVGYF'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (631, ''Martin'', ''Paul'', ''E_RYJJQHNBFK'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (632, ''Christine'', ''Payne'', ''E_SGUFZIJPCP'', 82, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (633, ''Jeremy'', ''Payne'', ''E_VEXMWAPYUB'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (634, ''Nathaniel'', ''Pena'', ''E_IDYMFSYDUY'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (635, ''Isaac'', ''Perez'', ''E_VOMRZTFCMM'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (636, ''Lela'', ''Perez'', ''E_LYELJPYGOA'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (637, ''Margarita'', ''Perez'', ''E_OWRPUQFATE'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (638, ''Fernando'', ''Perkins'', ''E_QQKBJCMXMG'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (639, ''Robert'', ''Perkins'', ''E_VLGZDZLLLG'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (640, ''Susie'', ''Perkins'', ''E_WXWOTHHGXU'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (641, ''Ben'', ''Perry'', ''E_XAGJCZLJDJ'', 198, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (642, ''Russell'', ''Perry'', ''E_IIDCCGUPIY'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (643, ''Timmy'', ''Perry'', ''E_RVJRGQMUYK'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (644, ''Allan'', ''Peters'', ''E_GFXGGKMZIM'', 198, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (645, ''Sophia'', ''Peters'', ''E_XATKVKQISW'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (646, ''Angel'', ''Peterson'', ''E_XJNYAFFAIZ'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (647, ''Alejandro'', ''Phelps'', ''E_XLZWOTJTCE'', 21, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (648, ''Joseph'', ''Phelps'', ''E_ZEXPNJVUAZ'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (649, ''Margie'', ''Phelps'', ''E_VNTZQSTYJO'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (650, ''Randall'', ''Phelps'', ''E_YJHQVBYHPK'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (651, ''Andres'', ''Pierce'', ''E_AHGAQQOERQ'', 198, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (652, ''Chris'', ''Pierce'', ''E_CCXONOUERT'', 82, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (653, ''Constance'', ''Pierce'', ''E_FIXIUQGTYF'', 98, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (654, ''Gwendolyn'', ''Pittman'', ''E_UNLHQGSTLU'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (655, ''Carolyn'', ''Poole'', ''E_RIYFNWODRA'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (656, ''Edward'', ''Poole'', ''E_DNSHZMKTAN'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (657, ''Kent'', ''Porter'', ''E_ZVZGNIYEMS'', 43, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (658, ''Sheryl'', ''Porter'', ''E_XYICZNBGCQ'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (659, ''Darlene'', ''Potter'', ''E_OZWOFLWJRM'', 188, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (660, ''Lula'', ''Potter'', ''E_XQJAKVAHBZ'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (661, ''Aubrey'', ''Powell'', ''E_SLDZLIWZQW'', 198, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (662, ''Irvin'', ''Powell'', ''E_XYGRRXYSXE'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (663, ''Dixie'', ''Powers'', ''E_UVDQTUOANS'', 175, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (664, ''Max'', ''Powers'', ''E_BRDVXKVACJ'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (665, ''Alison'', ''Pratt'', ''E_FOFHNZHMXN'', 21, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (666, ''Josh'', ''Pratt'', ''E_XLXLZKBVZT'', 43, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (667, ''Micheal'', ''Pratt'', ''E_MZFOFJMMII'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (668, ''Mandy'', ''Price'', ''E_JDPQCBKGBC'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (669, ''Rolando'', ''Price'', ''E_EFCAALJEZA'', 210, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (670, ''Wendy'', ''Price'', ''E_HIXBONVFIR'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (671, ''Manuel'', ''Quinn'', ''E_WUEAPETKQF'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (672, ''Caroline'', ''Ramirez'', ''E_MOBKJSOSSV'', 237, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (673, ''Celia'', ''Ramirez'', ''E_KWMLMSWTFD'', 82, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (674, ''Curtis'', ''Ramirez'', ''E_RZYTPFUJPW'', 98, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (675, ''Doug'', ''Ramos'', ''E_CFTHGBVKQF'', 175, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (676, ''Geneva'', ''Ramos'', ''E_NVEPWIFOXL'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (677, ''Dustin'', ''Ramsey'', ''E_EUZSHJGLEL'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (678, ''Kathy'', ''Ramsey'', ''E_FDPAYRFCRX'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (679, ''Jean'', ''Ray'', ''E_KBFWFSALDD'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (680, ''Raul'', ''Ray'', ''E_TONUWOFRHM'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (681, ''David'', ''Reed'', ''E_ZNVCUQLCRR'', 188, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (682, ''Freddie'', ''Reed'', ''E_UADKDDRFKR'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (683, ''Irene'', ''Reese'', ''E_BGTMHYWGOY'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (684, ''Amy'', ''Reeves'', ''E_QTWLYSRFXA'', 198, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (685, ''Cora'', ''Reeves'', ''E_DSWANBNTTN'', 98, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (686, ''Carmen'', ''Reid'', ''E_ZVLFQHQTVB'', 237, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (687, ''Randy'', ''Reynolds'', ''E_GIXWWLMSYA'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (688, ''Arlene'', ''Rhodes'', ''E_TDJJDUUJBN'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (689, ''Dave'', ''Rhodes'', ''E_PGFXJRBSZT'', 188, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (690, ''Elena'', ''Rhodes'', ''E_NIQJXLNZJJ'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (691, ''Simon'', ''Rhodes'', ''E_OJHMLBNCJJ'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (692, ''Tracy'', ''Rice'', ''E_CCNJOXDADG'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (693, ''Yolanda'', ''Rice'', ''E_KOGPTBHIFW'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (694, ''Brandon'', ''Rios'', ''E_EJWBXUEMJE'', 237, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (695, ''Kendra'', ''Rivera'', ''E_ZTTLONIWTP'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (696, ''Tom'', ''Roberson'', ''E_IOJTQIXTQD'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (697, ''Margie'', ''Roberts'', ''E_HRTBZHLXZI'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (698, ''Tricia'', ''Roberts'', ''E_GSELYUXKGP'', 214, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (699, ''Jean'', ''Robertson'', ''E_ZYNHAAAXGS'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (700, ''Rebecca'', ''Robinson'', ''E_NQGTKQGMKZ'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (701, ''Bill'', ''Rogers'', ''E_HXAHRQLXCD'', 198, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (702, ''Catherine'', ''Romero'', ''E_AVUSHMTJEL'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (703, ''Gerald'', ''Romero'', ''E_CUYYYBZDZL'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (704, ''Jeanne'', ''Romero'', ''E_FFPSTQUPCB'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (705, ''Stacey'', ''Romero'', ''E_OKVTCSHVBQ'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (706, ''Marjorie'', ''Rose'', ''E_LFWVGVASHO'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (707, ''Rogelio'', ''Rowe'', ''E_YDZAHZWFGY'', 210, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (708, ''Jon'', ''Rushman'', ''E_ESOAXIZYJW'', 198, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (709, ''Doris'', ''Russell'', ''E_ZLHKTNHDAK'', 175, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (710, ''Maria'', ''Russell'', ''E_FGWSNEOKOD'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (711, ''Roman'', ''Russell'', ''E_ZIHGDPLRYQ'', 210, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (712, ''Anne'', ''Ryan'', ''E_CPYMUWRJVF'', 198, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (713, ''Charlene'', ''Ryan'', ''E_XYSWZMXJRB'', 82, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (714, ''Johnnie'', ''Ryan'', ''E_QPNEGTQTNL'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (715, ''Anna'', ''Salazar'', ''E_QFKGBCBUIF'', 198, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (716, ''Loretta'', ''Salazar'', ''E_OCTMVFMSPM'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (717, ''Oscar'', ''Salazar'', ''E_FUUUEZTHSC'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (718, ''Chris'', ''Sanchez'', ''E_BNMMBXMCLE'', 82, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (719, ''Elbert'', ''Sanchez'', ''E_SEGJIVHBGI'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (720, ''Hector'', ''Sanchez'', ''E_IPIXKFVLGO'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (721, ''Ethel'', ''Sanders'', ''E_SZZYAZNCOP'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (722, ''Patrick'', ''Sanders'', ''E_BXNQEVCCRE'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (723, ''Caleb'', ''Sandoval'', ''E_AIJKFLHISZ'', 237, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (724, ''Gregory'', ''Sandoval'', ''E_DOOCADZKTI'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (725, ''Hugh'', ''Santiago'', ''E_RZOSXWLRIO'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (726, ''Melba'', ''Santiago'', ''E_EWUPZLDWJS'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (727, ''Angelica'', ''Saunders'', ''E_ELOEOTMZIM'', 198, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (728, ''Kristin'', ''Saunders'', ''E_QFQXIUTAVG'', 43, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (729, ''Fannie'', ''Schmidt'', ''E_HEOGGRTEVE'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (730, ''Luke'', ''Schneider'', ''E_DYFMUEBHLA'', 107, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (731, ''Delbert'', ''Schultz'', ''E_VPITXFDRMQ'', 175, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (732, ''Marion'', ''Schultz'', ''E_BUTDHOAVRY'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (733, ''Myrtle'', ''Schwartz'', ''E_HWENWQVHUZ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (734, ''Simon'', ''Schwartz'', ''E_ZNIFWGNUZR'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (735, ''Darnell'', ''Sharp'', ''E_TJQJTRUYQS'', 188, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (736, ''Jorge'', ''Sharp'', ''E_WRZETEDZWJ'', 43, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (737, ''Rickey'', ''Sharp'', ''E_CGSJNEVLGM'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (738, ''Ted'', ''Sharp'', ''E_LRIVTVXKXN'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (739, ''Andres'', ''Shaw'', ''E_ZWUWSMASNB'', 198, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (740, ''Devin'', ''Shaw'', ''E_KVRVWDWWII'', 175, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (741, ''Alicia'', ''Shelton'', ''E_KHAFUWQXOQ'', 21, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (742, ''Elsa'', ''Shelton'', ''E_XOTFWIIMEH'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (743, ''Irene'', ''Shelton'', ''E_NZNNYCFWEZ'', 110, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (744, ''Robin'', ''Shelton'', ''E_MXEMVCVUUT'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (745, ''Margarita'', ''Sherman'', ''E_YYLWPIKJYO'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (746, ''Randolph'', ''Sherman'', ''E_KTQPRSADQZ'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (747, ''Tamara'', ''Simon'', ''E_ZWKICBAOTI'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (748, ''Brent'', ''Simpson'', ''E_CVITBLRMSB'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (749, ''Alan'', ''Sims'', ''E_TNIYZQLQLO'', 21, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (750, ''Billy'', ''Sims'', ''E_FNRRWANFVN'', 237, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (751, ''Jeannie'', ''Smith'', ''E_BUAFMSDUUQ'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (752, ''Lisa'', ''Smith'', ''E_THPGFLSBGH'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (753, ''Jessie'', ''Snyder'', ''E_PCFOXXQHAQ'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (754, ''Juana'', ''Snyder'', ''E_XOVZDSQFCB'', 43, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (755, ''Alfredo'', ''Soto'', ''E_FUCZKDYQYC'', 21, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (756, ''Bernard'', ''Soto'', ''E_EFPDISMJRB'', 198, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (757, ''Rebecca'', ''Sparks'', ''E_GVWHGWPCVS'', 107, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (758, ''Randall'', ''Spencer'', ''E_FOXXUBBIYV'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (759, ''Sylvester'', ''Spencer'', ''E_YMVACEHLXA'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (760, ''Theodore'', ''Stanley'', ''E_XEMTODYDXP'', 214, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (761, ''Gwendolyn'', ''Steele'', ''E_XXPRRDEAHD'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (762, ''Diane'', ''Stephens'', ''E_OJEICBFAUU'', 175, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (763, ''Herbert'', ''Stephens'', ''E_HMNHTTRATL'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (764, ''Stacey'', ''Stephens'', ''E_KZMHJRWIBA'', 214, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (765, ''Geoffrey'', ''Stevens'', ''E_WGRHNDYKOI'', 110, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (766, ''Gregory'', ''Stevens'', ''E_DWHIVLSWKY'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (767, ''Bert'', ''Stevenson'', ''E_ODMFWQXKEO'', 198, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (768, ''Courtney'', ''Stevenson'', ''E_UIMWHTJLBO'', 98, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (769, ''Tabitha'', ''Stevenson'', ''E_MFTTVCBSTX'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (770, ''Antonia'', ''Stewart'', ''E_KXGPLWFDGY'', 198, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (771, ''Candace'', ''Stewart'', ''E_FWDPCOHSCO'', 237, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (772, ''Gayle'', ''Stewart'', ''E_MUXZTFMAMU'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (773, ''Sally'', ''Stokes'', ''E_IKIKJDDHYG'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (774, ''Dianne'', ''Stone'', ''E_GCQOEVAOME'', 175, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (775, ''Gene'', ''Stone'', ''E_OHVUSWXRHQ'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (776, ''Derrick'', ''Strickland'', ''E_DHOVDDAEZX'', 175, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (777, ''Garry'', ''Sullivan'', ''E_DVZXEUJCCA'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (778, ''Faith'', ''Summers'', ''E_NAOJPFMWZX'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (779, ''Jeremiah'', ''Summers'', ''E_LKJRHLNPNJ'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (780, ''Joyce'', ''Summers'', ''E_ZXVWMNHVMB'', 43, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (781, ''Robin'', ''Summers'', ''E_AQYMPZBNCI'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (782, ''Francisco'', ''Sutton'', ''E_TKLDGDLDPO'', 110, 14);',
'inse'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(5457611529305996)
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'rt into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (783, ''Salvador'', ''Swanson'', ''E_EBTDVAMCJY'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (784, ''Benny'', ''Tate'', ''E_POOKCCSTAS'', 198, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (785, ''Jacob'', ''Tate'', ''E_FWJJXMVUBZ'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (786, ''Larry'', ''Tate'', ''E_TNZGWFUOEA'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (787, ''Javier'', ''Terry'', ''E_IQEZXQAJJJ'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (788, ''Kurt'', ''Terry'', ''E_DRCMHZJHKB'', 107, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (789, ''Melvin'', ''Terry'', ''E_KXKPXWMPVX'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (790, ''Fredrick'', ''Thomas'', ''E_ZAYJZJYRXE'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (791, ''Hilda'', ''Thomas'', ''E_WDTXWCDUHW'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (792, ''Hugh'', ''Thomas'', ''E_DPRRKVNKTO'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (793, ''Lorenzo'', ''Thomas'', ''E_UHHOOFYRJX'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (794, ''Luis'', ''Thomas'', ''E_ZRFICXCYZJ'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (795, ''Cassandra'', ''Thompson'', ''E_MSHNTYBMZW'', 237, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (796, ''Lori'', ''Thompson'', ''E_PMEJZDWLRM'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (797, ''Bradford'', ''Thornton'', ''E_OWWQICVFTD'', 237, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (798, ''Cheryl'', ''Thornton'', ''E_UUVYXUMFDD'', 82, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (799, ''Clifton'', ''Thornton'', ''E_AIFHXSUKVV'', 98, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (800, ''Carmen'', ''Todd'', ''E_RXIRGBVQIR'', 237, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (801, ''Ira'', ''Torres'', ''E_PAVQQWQTCX'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (802, ''Lewis'', ''Torres'', ''E_KSEVOTSQXP'', 107, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (803, ''Lila'', ''Torres'', ''E_HCHDKSDLTM'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (804, ''Cathy'', ''Townsend'', ''E_VZMQFAHUUO'', 237, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (805, ''Lynette'', ''Townsend'', ''E_WSKWUVMVFK'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (806, ''Olive'', ''Tran'', ''E_NVVJKMADJG'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (807, ''Joann'', ''Tucker'', ''E_OJYVZDQIMB'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (808, ''Margaret'', ''Tucker'', ''E_NURYPJSHTF'', 107, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (809, ''Diana'', ''Turner'', ''E_TYIMJWRJRD'', 175, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (810, ''Fannie'', ''Turner'', ''E_CBWSOWLGJZ'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (811, ''Gayle'', ''Tyler'', ''E_LCMWBJOLYI'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (812, ''Jamie'', ''Tyler'', ''E_WIMMDSBDUM'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (813, ''Alberta'', ''Underwood'', ''E_QOFQDEYWAE'', 21, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (814, ''Catherine'', ''Underwood'', ''E_NVLKIICTLZ'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (815, ''Angie'', ''Valdez'', ''E_RVZNKMDEWR'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (816, ''Casey'', ''Valdez'', ''E_THVARAQZEC'', 237, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (817, ''Charlotte'', ''Valdez'', ''E_ZRQGAHRGSQ'', 82, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (818, ''Corey'', ''Valdez'', ''E_NCWRIEWNID'', 98, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (819, ''Ernesto'', ''Valdez'', ''E_MJOJLDEPBU'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (820, ''Trevor'', ''Valdez'', ''E_GZXFSFGHFE'', 214, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (821, ''Ellen'', ''Vargas'', ''E_RGJRAXCONB'', 110, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (822, ''Maxine'', ''Vargas'', ''E_CUEFJMSOVI'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (823, ''Felicia'', ''Vasquez'', ''E_WIVZVJUVHT'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (824, ''Dianne'', ''Vaughn'', ''E_QTMEATZWGU'', 175, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (825, ''Ernest'', ''Vaughn'', ''E_QYZPUXFDAH'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (826, ''Kurt'', ''Vaughn'', ''E_ICLXZXREMC'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (827, ''Monica'', ''Vaughn'', ''E_ROGHQYSXKS'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (828, ''Sandy'', ''Vaughn'', ''E_GQDHDVEFJL'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (829, ''Alex'', ''Wade'', ''E_ICNSKVBVSH'', 21, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (830, ''Ashley'', ''Wade'', ''E_QTYYCWOICO'', 198, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (831, ''Blanca'', ''Wade'', ''E_PFPZXDIMOU'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (832, ''Bonnie'', ''Wade'', ''E_ZGLIDXQMMW'', 237, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (833, ''Elsie'', ''Wade'', ''E_EBLXQCSWZI'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (834, ''Mathew'', ''Wade'', ''E_XTUVXCZTUS'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (835, ''Francis'', ''Wagner'', ''E_XNQAZONUXW'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (836, ''Guadalupe'', ''Wagner'', ''E_XXXWBUCSJA'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (837, ''Leticia'', ''Wagner'', ''E_OAIILLFKDM'', 107, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (838, ''Marlene'', ''Walker'', ''E_LWEFBZXVCN'', 107, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (839, ''Dale'', ''Wallace'', ''E_NLMZBPJTEF'', 188, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (840, ''Jessie'', ''Wallace'', ''E_LWNIQVLMRL'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (841, ''Lawrence'', ''Wallace'', ''E_LLLAOMRHHV'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (842, ''Rosemary'', ''Walsh'', ''E_GTWKPJGIGU'', 210, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (843, ''Erica'', ''Walters'', ''E_HURRLEPQCC'', 110, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (844, ''Allan'', ''Walton'', ''E_GYJWMBVQLK'', 21, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (845, ''Valerie'', ''Walton'', ''E_WCZRTVITQT'', 214, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (846, ''Wesley'', ''Walton'', ''E_CZTRENUAFJ'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (847, ''Benny'', ''Ward'', ''E_EKXGBHXANZ'', 198, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (848, ''Dawn'', ''Ward'', ''E_ECQTMZCFQV'', 188, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (849, ''Karl'', ''Ward'', ''E_EWMXLMGIUZ'', 43, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (850, ''Alberta'', ''Warren'', ''E_MLRXKLDUIX'', 21, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (851, ''Ida'', ''Warren'', ''E_MTTQNXFMSZ'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (852, ''Patrick'', ''Warren'', ''E_FPSYFODLIR'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (853, ''Mack'', ''Washington'', ''E_IVIQKRRNVW'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (854, ''Zachary'', ''Washington'', ''E_PRENIZUEXS'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (855, ''Ellen'', ''Waters'', ''E_YOKLJGNBHZ'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (856, ''Scott'', ''Watkins'', ''E_APFXVUCUUO'', 214, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (857, ''Alfredo'', ''Watson'', ''E_CDLEOVZKSF'', 21, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (858, ''Peter'', ''Watson'', ''E_MSCBHFCGOH'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (859, ''Drew'', ''Watts'', ''E_GWXXQBHICR'', 110, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (860, ''Bill'', ''Weaver'', ''E_TZCFAIFHXK'', 198, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (861, ''Eugene'', ''Weaver'', ''E_YUCDTNYTQL'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (862, ''Jason'', ''Webb'', ''E_PXIGIPYEFI'', 110, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (863, ''Sherri'', ''Webb'', ''E_GGHURTQJWT'', 214, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (864, ''Brenda'', ''Weber'', ''E_UVJSHWBPVN'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (865, ''Pat'', ''Weber'', ''E_LULEXXELOE'', 107, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (866, ''Eleanor'', ''Webster'', ''E_LSLCEZOMMI'', 110, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (867, ''Irma'', ''Welch'', ''E_JEALTOESFS'', 110, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (868, ''Pete'', ''Welch'', ''E_FONVPOHXZZ'', 107, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (869, ''Cindy'', ''Wells'', ''E_QMKMYBWVCD'', 98, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (870, ''Damon'', ''Wells'', ''E_FOSMQUNWPY'', 188, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (871, ''Shawna'', ''Wells'', ''E_XCXLUNSOJD'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (872, ''Judy'', ''West'', ''E_NFTILZDFCS'', 43, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (873, ''Ryan'', ''West'', ''E_VJOBSEZHWO'', 214, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (874, ''Kate'', ''White'', ''E_HPSNTIXBHW'', 43, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (875, ''Otis'', ''White'', ''E_UEZVZNYBSJ'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (876, ''Tomas'', ''White'', ''E_FYDJWXEJCM'', 214, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (877, ''Deanna'', ''Wilkerson'', ''E_JNJWAABTES'', 188, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (878, ''Jesus'', ''Wilkerson'', ''E_KLCMQXDAZE'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (879, ''Angel'', ''Wilkins'', ''E_SPREILDTYW'', 198, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (880, ''Brett'', ''Wilkins'', ''E_FJZHEFLPCQ'', 237, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (881, ''Brian'', ''Wilson'', ''E_PSMMBWGBFA'', 237, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (882, ''Jason'', ''Wilson'', ''E_PRCEZFJCBJ'', 110, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (883, ''Darin'', ''Wolfe'', ''E_RNPHLXGHUD'', 188, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (884, ''Darrel'', ''Wolfe'', ''E_JGVDBXXFOD'', 188, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (885, ''Dennis'', ''Wolfe'', ''E_OWBZCVFFEM'', 175, 8);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (886, ''Hilda'', ''Wong'', ''E_NXKPHKQQVZ'', 110, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (887, ''Alice'', ''Wood'', ''E_IEVCQVUPGB'', 21, 9);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (888, ''Marta'', ''Wood'', ''E_IPNBEZHBCV'', 107, 10);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (889, ''Colin'', ''Woods'', ''E_GOBTLICCUF'', 98, 19);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (890, ''Guadalupe'', ''Woods'', ''E_UWHRFSJMGN'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (891, ''Ruby'', ''Woods'', ''E_GPNEQKJUGQ'', 214, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (892, ''Neal'', ''Wright'', ''E_PHSIMHGGTG'', 107, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (893, ''Aaron'', ''Yates'', ''E_ISVXEGKQDM'', 21, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (894, ''Amy'', ''Yates'', ''E_RBRTOMDGCC'', 198, 13);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (895, ''Cynthia'', ''Yates'', ''E_POTEUNMCPD'', 188, 18);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (896, ''Emma'', ''Yates'', ''E_NZYVJJJHUO'', 110, 14);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (897, ''Gretchen'', ''Yates'', ''E_QOKODICGPN'', 110, 15);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (898, ''Carol'', ''Young'', ''E_RJYDNAEDIQ'', 237, 4);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (899, ''John'', ''Young'', ''E_AXOZVNLWZP'', 43, 3);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (900, ''Olivia'', ''Young'', ''E_SCRYDKGWEZ'', 107, 5);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (901, ''Edward'', ''Zimmerman'', ''E_DJEKAVUZUA'', 110, 12);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (902, ''Nelson'', ''Zimmerman'', ''E_AACAAABUQY'', 107, 17);',
'insert into ptrail_employees (id, first_name, second_name, employee_id, location_id, business_id) values (903, ''Shawn'', ''Zimmerman'', ''E_HPKKCNZFZE'', 214, 3);',
'',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
