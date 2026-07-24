-file_tag+={ZEPHYR_SUBSYS_EMUL_FILES, "^zephyr/subsys/emul/.*$"}
-file_tag+={ZEPHYR_SUBSYS_EMUL_FILES, "^zephyr/include/zephyr/drivers/emul.*\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_EMUL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_EMUL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_EMUL_FILES))))"},
    {"ZEPHYR_SUBSYS_EMUL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_EMUL_FILES))))"},
    {"ZEPHYR_SUBSYS_EMUL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_EMUL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_EMUL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_EMUL", ZEPHYR_SUBSYS_EMUL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_EMUL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_EMUL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_EMUL"
-doc_end
