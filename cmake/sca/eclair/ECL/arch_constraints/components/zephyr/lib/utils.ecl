eval_file_glob(join_paths(ecls_dir,"components/zephyr/lib/utils/*.ecl"))

-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/lib/utils/.*$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/util.*\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/base64\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/math_extras\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/math_extras_impl\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/notify\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/onoff\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/sys_getopt\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/minmax\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/set\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/data/cobs\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/data/json\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_GENERIC_FILES, "^zephyr/include/zephyr/sys/byteorder\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_GENERIC_FILES))))"},
    {"ZEPHYR_LIB_UTILS_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_GENERIC_FILES))))"},
    {"ZEPHYR_LIB_UTILS_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_GENERIC", ZEPHYR_LIB_UTILS_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_GENERIC"
-doc_end
