-file_tag+={ZEPHYR_SUBSYS_SHELL_FILES, "^subsys/shell/.*$"}
-file_tag+={ZEPHYR_SUBSYS_SHELL_FILES, "^include/zephyr/shell/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_SHELL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_SHELL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SHELL_FILES))))"},
    {"ZEPHYR_SUBSYS_SHELL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_SHELL_FILES))))"},
    {"ZEPHYR_SUBSYS_SHELL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SHELL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_SHELL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_SHELL", ZEPHYR_SUBSYS_SHELL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_SHELL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_SHELL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_SHELL"
-doc_end
