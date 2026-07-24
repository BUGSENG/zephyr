-file_tag+={ZEPHYR_LIB_UTILS_LINEAR_RANGE_FILES, "^zephyr/include/zephyr/sys/linear_range\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_LINEAR_RANGE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_LINEAR_RANGE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_LINEAR_RANGE_FILES))))"},
    {"ZEPHYR_LIB_UTILS_LINEAR_RANGE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_LINEAR_RANGE_FILES))))"},
    {"ZEPHYR_LIB_UTILS_LINEAR_RANGE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_LINEAR_RANGE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_LINEAR_RANGE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_LINEAR_RANGE", ZEPHYR_LIB_UTILS_LINEAR_RANGE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_LINEAR_RANGE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_LINEAR_RANGE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_LINEAR_RANGE"
-doc_end
