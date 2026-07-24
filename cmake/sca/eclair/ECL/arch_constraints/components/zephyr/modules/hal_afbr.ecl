-file_tag+={ZEPHYR_MODULES_HAL_AFBR_FILES, "^zephyr/modules/hal_afbr/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_AFBR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_AFBR", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_AFBR_FILES))))"},
    {"ZEPHYR_MODULES_HAL_AFBR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_AFBR_FILES))))"},
    {"ZEPHYR_MODULES_HAL_AFBR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_AFBR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_AFBR component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_AFBR", ZEPHYR_MODULES_HAL_AFBR_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_AFBR component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_AFBR"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_AFBR"
-doc_end
