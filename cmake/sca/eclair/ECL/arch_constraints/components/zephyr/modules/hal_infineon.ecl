-file_tag+={ZEPHYR_MODULES_HAL_INFINEON_FILES, "^zephyr/modules/hal_infineon/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_INFINEON component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_INFINEON", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_INFINEON_FILES))))"},
    {"ZEPHYR_MODULES_HAL_INFINEON", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_INFINEON_FILES))))"},
    {"ZEPHYR_MODULES_HAL_INFINEON", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_INFINEON_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_INFINEON component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_INFINEON", ZEPHYR_MODULES_HAL_INFINEON_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_INFINEON component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_INFINEON"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_INFINEON"
-doc_end
