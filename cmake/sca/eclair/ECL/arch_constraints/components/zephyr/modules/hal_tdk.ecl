-file_tag+={ZEPHYR_MODULES_HAL_TDK_FILES, "^zephyr/modules/hal_tdk/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_TDK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_TDK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_TDK_FILES))))"},
    {"ZEPHYR_MODULES_HAL_TDK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_TDK_FILES))))"},
    {"ZEPHYR_MODULES_HAL_TDK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_TDK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_TDK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_TDK", ZEPHYR_MODULES_HAL_TDK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_TDK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_TDK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_TDK"
-doc_end
