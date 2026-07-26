-file_tag+={ZEPHYR_SUBSYS_PROFILING_FILES, "^subsys/profiling/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_PROFILING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_PROFILING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PROFILING_FILES))))"},
    {"ZEPHYR_SUBSYS_PROFILING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_PROFILING_FILES))))"},
    {"ZEPHYR_SUBSYS_PROFILING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PROFILING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_PROFILING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_PROFILING", ZEPHYR_SUBSYS_PROFILING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_PROFILING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_PROFILING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_PROFILING"
-doc_end
