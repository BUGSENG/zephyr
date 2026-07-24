-file_tag+={ZEPHYR_MODULES_HAL_AMBIQ_FILES, "^zephyr/modules/hal_ambiq/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_AMBIQ component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_AMBIQ", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_AMBIQ_FILES))))"},
    {"ZEPHYR_MODULES_HAL_AMBIQ", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_AMBIQ_FILES))))"},
    {"ZEPHYR_MODULES_HAL_AMBIQ", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_AMBIQ_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_AMBIQ component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_AMBIQ", ZEPHYR_MODULES_HAL_AMBIQ_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_AMBIQ component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_AMBIQ"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_AMBIQ"
-doc_end
