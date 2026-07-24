-file_tag+={ZEPHYR_DRIVERS_WIFI_FILES, "^zephyr/drivers/wifi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_WIFI_FILES, "^zephyr/include/zephyr/drivers/wifi/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_WIFI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_WIFI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_WIFI_FILES))))"},
    {"ZEPHYR_DRIVERS_WIFI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_WIFI_FILES))))"},
    {"ZEPHYR_DRIVERS_WIFI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_WIFI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_WIFI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_WIFI", ZEPHYR_DRIVERS_WIFI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_WIFI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_WIFI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_WIFI"
-doc_end
