-file_tag+={ZEPHYR_MODULES_HAL_BOUFFALOLAB_FILES, "^.*/modules/hal_bouffalolab/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_BOUFFALOLAB component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_BOUFFALOLAB", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_BOUFFALOLAB_FILES))))"},
    {"ZEPHYR_MODULES_HAL_BOUFFALOLAB", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_BOUFFALOLAB_FILES))))"},
    {"ZEPHYR_MODULES_HAL_BOUFFALOLAB", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_BOUFFALOLAB_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_BOUFFALOLAB component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_BOUFFALOLAB", ZEPHYR_MODULES_HAL_BOUFFALOLAB_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_BOUFFALOLAB component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_BOUFFALOLAB"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_BOUFFALOLAB"
-doc_end
