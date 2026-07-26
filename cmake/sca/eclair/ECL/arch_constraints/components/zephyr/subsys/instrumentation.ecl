-file_tag+={ZEPHYR_SUBSYS_INSTRUMENTATION_FILES, "^include/zephyr/instrumentation/.*$"}
-file_tag+={ZEPHYR_SUBSYS_INSTRUMENTATION_FILES, "^subsys/instrumentation/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_INSTRUMENTATION component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_INSTRUMENTATION", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_INSTRUMENTATION_FILES))))"},
    {"ZEPHYR_SUBSYS_INSTRUMENTATION", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_INSTRUMENTATION_FILES))))"},
    {"ZEPHYR_SUBSYS_INSTRUMENTATION", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_INSTRUMENTATION_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_INSTRUMENTATION component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_INSTRUMENTATION", ZEPHYR_SUBSYS_INSTRUMENTATION_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_INSTRUMENTATION component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_INSTRUMENTATION"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_INSTRUMENTATION"
-doc_end
