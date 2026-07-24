-file_tag+={ZEPHYR_LIB_UTILS_TIMEUTIL_FILES, "^zephyr/include/zephyr/sys/timeutil\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_TIMEUTIL_FILES, "^zephyr/lib/utils/timeutil\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_TIMEUTIL_FILES, "^zephyr/include/zephyr/sys/time_units\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_TIMEUTIL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_TIMEUTIL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_TIMEUTIL_FILES))))"},
    {"ZEPHYR_LIB_UTILS_TIMEUTIL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_TIMEUTIL_FILES))))"},
    {"ZEPHYR_LIB_UTILS_TIMEUTIL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_TIMEUTIL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_TIMEUTIL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_TIMEUTIL", ZEPHYR_LIB_UTILS_TIMEUTIL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_TIMEUTIL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_TIMEUTIL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_TIMEUTIL"
-doc_end
