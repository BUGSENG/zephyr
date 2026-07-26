-file_tag+={ZEPHYR_MODULES_NRF_WIFI_FILES, "^modules/nrf_wifi/.*$"}

-doc_begin="The ZEPHYR_MODULES_NRF_WIFI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_NRF_WIFI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_NRF_WIFI_FILES))))"},
    {"ZEPHYR_MODULES_NRF_WIFI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_NRF_WIFI_FILES))))"},
    {"ZEPHYR_MODULES_NRF_WIFI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_NRF_WIFI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_NRF_WIFI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_NRF_WIFI", ZEPHYR_MODULES_NRF_WIFI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_NRF_WIFI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_NRF_WIFI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_NRF_WIFI"
-doc_end
