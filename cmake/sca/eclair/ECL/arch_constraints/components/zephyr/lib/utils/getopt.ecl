-file_tag+={ZEPHYR_LIB_UTILS_GETOPT_FILES, "^lib/utils/getopt/.*$"}
-file_tag+={ZEPHYR_LIB_UTILS_GETOPT_FILES, "^include/zephyr/sys/sys_getopt\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_GETOPT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_GETOPT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_GETOPT_FILES))))"},
    {"ZEPHYR_LIB_UTILS_GETOPT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_GETOPT_FILES))))"},
    {"ZEPHYR_LIB_UTILS_GETOPT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_GETOPT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_GETOPT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_GETOPT", ZEPHYR_LIB_UTILS_GETOPT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_GETOPT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_GETOPT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_GETOPT"
-doc_end
