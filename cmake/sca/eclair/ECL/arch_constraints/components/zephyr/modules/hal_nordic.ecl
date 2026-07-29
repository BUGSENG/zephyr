-file_tag+={ZEPHYR_MODULES_HAL_NORDIC_FILES, "^.*/modules/hal_nordic/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_NORDIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_NORDIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_NORDIC_FILES))))"},
    {"ZEPHYR_MODULES_HAL_NORDIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_NORDIC_FILES))))"},
    {"ZEPHYR_MODULES_HAL_NORDIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_NORDIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_NORDIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_NORDIC", ZEPHYR_MODULES_HAL_NORDIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_NORDIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_NORDIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_NORDIC"
-doc_end
