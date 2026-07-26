-file_tag+={ZEPHYR_LIB_UTILS_UTIL_FILES, "^include/zephyr/sys/util.*\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_UTIL_FILES, "^lib/utils/utf8\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_UTIL_FILES, "^lib/utils/hex\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_UTIL_FILES, "^lib/utils/bitmask\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_UTIL_FILES, "^lib/utils/dec\\.c$"}

-doc_begin="The ZEPHYR_LIB_UTILS_UTIL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_UTIL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_UTIL_FILES))))"},
    {"ZEPHYR_LIB_UTILS_UTIL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_UTIL_FILES))))"},
    {"ZEPHYR_LIB_UTILS_UTIL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_UTIL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_UTIL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_UTIL", ZEPHYR_LIB_UTILS_UTIL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_UTIL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_UTIL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_UTIL"
-doc_end
