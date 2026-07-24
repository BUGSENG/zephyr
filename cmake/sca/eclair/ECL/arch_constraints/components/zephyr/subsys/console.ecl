-file_tag+={ZEPHYR_SUBSYS_CONSOLE_FILES, "^zephyr/subsys/console/.*$"}
-file_tag+={ZEPHYR_SUBSYS_CONSOLE_FILES, "^zephyr/include/zephyr/console/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_CONSOLE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_CONSOLE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CONSOLE_FILES))))"},
    {"ZEPHYR_SUBSYS_CONSOLE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_CONSOLE_FILES))))"},
    {"ZEPHYR_SUBSYS_CONSOLE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CONSOLE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_CONSOLE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_CONSOLE", ZEPHYR_SUBSYS_CONSOLE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_CONSOLE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_CONSOLE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_CONSOLE"
-doc_end
