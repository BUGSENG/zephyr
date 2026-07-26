-file_tag+={ZEPHYR_MODULES_HAL_NXP_FILES, "^modules/hal_nxp/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_NXP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_NXP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_NXP_FILES))))"},
    {"ZEPHYR_MODULES_HAL_NXP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_NXP_FILES))))"},
    {"ZEPHYR_MODULES_HAL_NXP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_NXP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_NXP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_NXP", ZEPHYR_MODULES_HAL_NXP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_NXP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_NXP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_NXP"
-doc_end
