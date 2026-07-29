-file_tag+={ZEPHYR_MODULES_HAL_ETHOS_U_FILES, "^.*/modules/hal_ethos_u/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_ETHOS_U component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_ETHOS_U", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_ETHOS_U_FILES))))"},
    {"ZEPHYR_MODULES_HAL_ETHOS_U", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_ETHOS_U_FILES))))"},
    {"ZEPHYR_MODULES_HAL_ETHOS_U", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_ETHOS_U_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_ETHOS_U component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_ETHOS_U", ZEPHYR_MODULES_HAL_ETHOS_U_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_ETHOS_U component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_ETHOS_U"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_ETHOS_U"
-doc_end
