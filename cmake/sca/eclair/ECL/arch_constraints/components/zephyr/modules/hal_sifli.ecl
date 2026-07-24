-file_tag+={ZEPHYR_MODULES_HAL_SIFLI_FILES, "^zephyr/modules/hal_sifli/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_SIFLI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_SIFLI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_SIFLI_FILES))))"},
    {"ZEPHYR_MODULES_HAL_SIFLI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_SIFLI_FILES))))"},
    {"ZEPHYR_MODULES_HAL_SIFLI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_SIFLI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_SIFLI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_SIFLI", ZEPHYR_MODULES_HAL_SIFLI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_SIFLI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_SIFLI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_SIFLI"
-doc_end
