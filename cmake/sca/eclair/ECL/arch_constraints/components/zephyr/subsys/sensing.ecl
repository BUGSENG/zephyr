-file_tag+={ZEPHYR_SUBSYS_SENSING_FILES, "^subsys/sensing/.*$"}
-file_tag+={ZEPHYR_SUBSYS_SENSING_FILES, "^include/zephyr/sensing/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_SENSING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_SENSING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SENSING_FILES))))"},
    {"ZEPHYR_SUBSYS_SENSING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_SENSING_FILES))))"},
    {"ZEPHYR_SUBSYS_SENSING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SENSING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_SENSING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_SENSING", ZEPHYR_SUBSYS_SENSING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_SENSING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_SENSING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_SENSING"
-doc_end
