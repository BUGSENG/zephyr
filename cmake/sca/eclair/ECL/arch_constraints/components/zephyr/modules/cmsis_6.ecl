-file_tag+={ZEPHYR_MODULES_CMSIS_6_FILES, "^.*/modules/cmsis_6/.*$"}

-doc_begin="The ZEPHYR_MODULES_CMSIS_6 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_CMSIS_6", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_CMSIS_6_FILES))))"},
    {"ZEPHYR_MODULES_CMSIS_6", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_CMSIS_6_FILES))))"},
    {"ZEPHYR_MODULES_CMSIS_6", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_CMSIS_6_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_CMSIS_6 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_CMSIS_6", ZEPHYR_MODULES_CMSIS_6_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_CMSIS_6 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_CMSIS_6"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_CMSIS_6"
-doc_end
