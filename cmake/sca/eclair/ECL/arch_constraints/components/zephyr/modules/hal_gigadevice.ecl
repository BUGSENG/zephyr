-file_tag+={ZEPHYR_MODULES_HAL_GIGADEVICE_FILES, "^zephyr/modules/hal_gigadevice/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_GIGADEVICE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_GIGADEVICE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_GIGADEVICE_FILES))))"},
    {"ZEPHYR_MODULES_HAL_GIGADEVICE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_GIGADEVICE_FILES))))"},
    {"ZEPHYR_MODULES_HAL_GIGADEVICE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_GIGADEVICE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_GIGADEVICE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_GIGADEVICE", ZEPHYR_MODULES_HAL_GIGADEVICE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_GIGADEVICE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_GIGADEVICE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_GIGADEVICE"
-doc_end
