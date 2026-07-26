-file_tag+={ZEPHYR_SUBSYS_GNSS_FILES, "^subsys/gnss/.*$"}
-file_tag+={ZEPHYR_SUBSYS_GNSS_FILES, "^include/zephyr/gnss/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_GNSS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_GNSS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_GNSS_FILES))))"},
    {"ZEPHYR_SUBSYS_GNSS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_GNSS_FILES))))"},
    {"ZEPHYR_SUBSYS_GNSS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_GNSS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_GNSS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_GNSS", ZEPHYR_SUBSYS_GNSS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_GNSS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_GNSS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_GNSS"
-doc_end
