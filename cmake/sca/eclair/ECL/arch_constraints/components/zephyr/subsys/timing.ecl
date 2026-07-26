-file_tag+={ZEPHYR_SUBSYS_TIMING_FILES, "^subsys/timing/.*$"}
-file_tag+={ZEPHYR_SUBSYS_TIMING_FILES, "^include/zephyr/timing/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_TIMING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_TIMING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TIMING_FILES))))"},
    {"ZEPHYR_SUBSYS_TIMING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_TIMING_FILES))))"},
    {"ZEPHYR_SUBSYS_TIMING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TIMING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_TIMING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_TIMING", ZEPHYR_SUBSYS_TIMING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_TIMING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_TIMING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_TIMING"
-doc_end
