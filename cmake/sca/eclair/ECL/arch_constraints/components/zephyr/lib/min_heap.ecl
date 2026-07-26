-file_tag+={ZEPHYR_LIB_MIN_HEAP_FILES, "^lib/min_heap/.*$"}
-file_tag+={ZEPHYR_LIB_MIN_HEAP_FILES, "^include/zephyr/sys/min_heap\\.h$"}

-doc_begin="The ZEPHYR_LIB_MIN_HEAP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_MIN_HEAP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_MIN_HEAP_FILES))))"},
    {"ZEPHYR_LIB_MIN_HEAP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_MIN_HEAP_FILES))))"},
    {"ZEPHYR_LIB_MIN_HEAP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_MIN_HEAP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_MIN_HEAP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_MIN_HEAP", ZEPHYR_LIB_MIN_HEAP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_MIN_HEAP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_MIN_HEAP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_MIN_HEAP"
-doc_end
