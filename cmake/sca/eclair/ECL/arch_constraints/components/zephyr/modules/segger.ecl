-file_tag+={ZEPHYR_MODULES_SEGGER_FILES, "^.*/modules/segger/.*$"}

-doc_begin="The ZEPHYR_MODULES_SEGGER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_SEGGER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_SEGGER_FILES))))"},
    {"ZEPHYR_MODULES_SEGGER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_SEGGER_FILES))))"},
    {"ZEPHYR_MODULES_SEGGER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_SEGGER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_SEGGER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_SEGGER", ZEPHYR_MODULES_SEGGER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_SEGGER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_SEGGER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_SEGGER"
-doc_end
