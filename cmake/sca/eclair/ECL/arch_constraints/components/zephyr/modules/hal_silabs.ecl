-file_tag+={ZEPHYR_MODULES_HAL_SILABS_FILES, "^zephyr/modules/hal_silabs/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_SILABS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_SILABS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_SILABS_FILES))))"},
    {"ZEPHYR_MODULES_HAL_SILABS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_SILABS_FILES))))"},
    {"ZEPHYR_MODULES_HAL_SILABS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_SILABS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_SILABS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_SILABS", ZEPHYR_MODULES_HAL_SILABS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_SILABS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_SILABS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_SILABS"
-doc_end
