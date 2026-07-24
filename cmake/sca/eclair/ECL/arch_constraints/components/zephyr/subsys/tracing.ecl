-file_tag+={ZEPHYR_SUBSYS_TRACING_FILES, "^zephyr/subsys/tracing/.*$"}
-file_tag+={ZEPHYR_SUBSYS_TRACING_FILES, "^zephyr/include/zephyr/tracing/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_TRACING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_TRACING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TRACING_FILES))))"},
    {"ZEPHYR_SUBSYS_TRACING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_TRACING_FILES))))"},
    {"ZEPHYR_SUBSYS_TRACING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TRACING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_TRACING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_TRACING", ZEPHYR_SUBSYS_TRACING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_TRACING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_TRACING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_TRACING"
-doc_end
