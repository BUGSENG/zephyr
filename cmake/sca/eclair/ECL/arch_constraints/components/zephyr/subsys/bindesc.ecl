-file_tag+={ZEPHYR_SUBSYS_BINDESC_FILES, "^subsys/bindesc/.*$"}
-file_tag+={ZEPHYR_SUBSYS_BINDESC_FILES, "^include/zephyr/bindesc\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_BINDESC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_BINDESC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_BINDESC_FILES))))"},
    {"ZEPHYR_SUBSYS_BINDESC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_BINDESC_FILES))))"},
    {"ZEPHYR_SUBSYS_BINDESC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_BINDESC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_BINDESC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_BINDESC", ZEPHYR_SUBSYS_BINDESC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_BINDESC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_BINDESC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_BINDESC"
-doc_end
