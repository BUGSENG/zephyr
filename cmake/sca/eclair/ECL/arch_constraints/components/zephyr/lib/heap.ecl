-file_tag+={ZEPHYR_LIB_HEAP_FILES, "^zephyr/lib/heap/.*$"}
-file_tag+={ZEPHYR_LIB_HEAP_FILES, "^zephyr/include/zephyr/multi_heap/.*$"}
-file_tag+={ZEPHYR_LIB_HEAP_FILES, "^zephyr/include/zephyr/sys/multi_heap\\.h$"}
-file_tag+={ZEPHYR_LIB_HEAP_FILES, "^zephyr/include/zephyr/sys/sys_heap\\.h$"}
-file_tag+={ZEPHYR_LIB_HEAP_FILES, "^zephyr/include/zephyr/sys/heap_listener\\.h$"}
-file_tag+={ZEPHYR_LIB_HEAP_FILES, "^.*/build/zephyr/include/generated/zephyr/heap_constants\\.h$"}

-doc_begin="The ZEPHYR_LIB_HEAP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_HEAP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_HEAP_FILES))))"},
    {"ZEPHYR_LIB_HEAP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_HEAP_FILES))))"},
    {"ZEPHYR_LIB_HEAP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_HEAP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_HEAP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_HEAP", ZEPHYR_LIB_HEAP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_HEAP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_HEAP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_HEAP"
-doc_end
