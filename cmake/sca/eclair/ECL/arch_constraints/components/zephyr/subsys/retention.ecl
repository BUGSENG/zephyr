-file_tag+={ZEPHYR_SUBSYS_RETENTION_FILES, "^subsys/retention/.*$"}
-file_tag+={ZEPHYR_SUBSYS_RETENTION_FILES, "^include/zephyr/retention/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_RETENTION component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_RETENTION", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_RETENTION_FILES))))"},
    {"ZEPHYR_SUBSYS_RETENTION", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_RETENTION_FILES))))"},
    {"ZEPHYR_SUBSYS_RETENTION", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_RETENTION_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_RETENTION component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_RETENTION", ZEPHYR_SUBSYS_RETENTION_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_RETENTION component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_RETENTION"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_RETENTION"
-doc_end
