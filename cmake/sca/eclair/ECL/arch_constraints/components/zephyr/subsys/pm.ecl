-file_tag+={ZEPHYR_SUBSYS_PM_FILES, "^subsys/pm/.*$"}
-file_tag+={ZEPHYR_SUBSYS_PM_FILES, "^include/zephyr/pm/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_PM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_PM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PM_FILES))))"},
    {"ZEPHYR_SUBSYS_PM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_PM_FILES))))"},
    {"ZEPHYR_SUBSYS_PM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_PM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_PM", ZEPHYR_SUBSYS_PM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_PM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_PM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_PM"
-doc_end
