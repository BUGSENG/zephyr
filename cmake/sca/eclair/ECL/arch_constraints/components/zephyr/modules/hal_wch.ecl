-file_tag+={ZEPHYR_MODULES_HAL_WCH_FILES, "^zephyr/modules/hal_wch/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_WCH component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_WCH", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_WCH_FILES))))"},
    {"ZEPHYR_MODULES_HAL_WCH", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_WCH_FILES))))"},
    {"ZEPHYR_MODULES_HAL_WCH", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_WCH_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_WCH component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_WCH", ZEPHYR_MODULES_HAL_WCH_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_WCH component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_WCH"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_WCH"
-doc_end
