-file_tag+={ZEPHYR_MODULES_HAL_REALTEK_FILES, "^.*/modules/hal_realtek/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_REALTEK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_REALTEK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_REALTEK_FILES))))"},
    {"ZEPHYR_MODULES_HAL_REALTEK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_REALTEK_FILES))))"},
    {"ZEPHYR_MODULES_HAL_REALTEK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_REALTEK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_REALTEK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_REALTEK", ZEPHYR_MODULES_HAL_REALTEK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_REALTEK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_REALTEK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_REALTEK"
-doc_end
