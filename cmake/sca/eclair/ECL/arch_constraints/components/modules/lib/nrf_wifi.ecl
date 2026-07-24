-file_tag+={MODULES_LIB_NRF_WIFI_FILES, "^modules/lib/nrf_wifi/.*$"}

-doc_begin="The MODULES_LIB_NRF_WIFI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_NRF_WIFI", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_NRF_WIFI_FILES))))"},
    {"MODULES_LIB_NRF_WIFI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_NRF_WIFI_FILES))))"},
    {"MODULES_LIB_NRF_WIFI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_NRF_WIFI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_NRF_WIFI component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_NRF_WIFI", MODULES_LIB_NRF_WIFI_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_NRF_WIFI component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_NRF_WIFI"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_NRF_WIFI"
-doc_end
