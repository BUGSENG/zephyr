-file_tag+={ZEPHYR_LIB_SMF_FILES, "^zephyr/lib/smf/.*$"}
-file_tag+={ZEPHYR_LIB_SMF_FILES, "^zephyr/include/zephyr/smf\\.h$"}

-doc_begin="The ZEPHYR_LIB_SMF component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_SMF", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_SMF_FILES))))"},
    {"ZEPHYR_LIB_SMF", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_SMF_FILES))))"},
    {"ZEPHYR_LIB_SMF", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_SMF_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_SMF component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_SMF", ZEPHYR_LIB_SMF_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_SMF component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_SMF"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_SMF"
-doc_end
