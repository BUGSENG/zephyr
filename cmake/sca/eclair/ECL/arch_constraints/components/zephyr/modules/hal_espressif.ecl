-file_tag+={ZEPHYR_MODULES_HAL_ESPRESSIF_FILES, "^.*/modules/hal_espressif/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_ESPRESSIF component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_ESPRESSIF", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_ESPRESSIF_FILES))))"},
    {"ZEPHYR_MODULES_HAL_ESPRESSIF", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_ESPRESSIF_FILES))))"},
    {"ZEPHYR_MODULES_HAL_ESPRESSIF", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_ESPRESSIF_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_ESPRESSIF component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_ESPRESSIF", ZEPHYR_MODULES_HAL_ESPRESSIF_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_ESPRESSIF component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_ESPRESSIF"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_ESPRESSIF"
-doc_end
