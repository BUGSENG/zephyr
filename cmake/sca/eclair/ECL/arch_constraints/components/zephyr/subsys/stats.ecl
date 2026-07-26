-file_tag+={ZEPHYR_SUBSYS_STATS_FILES, "^subsys/stats/.*$"}
-file_tag+={ZEPHYR_SUBSYS_STATS_FILES, "^include/zephyr/stats/.*$"}
-file_tag+={ZEPHYR_SUBSYS_STATS_FILES, "^include/zephyr/kernel/stats\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_STATS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_STATS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_STATS_FILES))))"},
    {"ZEPHYR_SUBSYS_STATS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_STATS_FILES))))"},
    {"ZEPHYR_SUBSYS_STATS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_STATS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_STATS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_STATS", ZEPHYR_SUBSYS_STATS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_STATS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_STATS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_STATS"
-doc_end
