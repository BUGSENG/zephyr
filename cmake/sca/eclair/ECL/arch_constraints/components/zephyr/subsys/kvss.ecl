-file_tag+={ZEPHYR_SUBSYS_KVSS_FILES, "^zephyr/subsys/kvss/.*$"}
-file_tag+={ZEPHYR_SUBSYS_KVSS_FILES, "^zephyr/include/zephyr/kvss/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_KVSS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_KVSS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_KVSS_FILES))))"},
    {"ZEPHYR_SUBSYS_KVSS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_KVSS_FILES))))"},
    {"ZEPHYR_SUBSYS_KVSS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_KVSS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_KVSS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_KVSS", ZEPHYR_SUBSYS_KVSS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_KVSS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_KVSS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_KVSS"
-doc_end
