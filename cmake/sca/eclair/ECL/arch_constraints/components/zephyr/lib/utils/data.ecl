-file_tag+={ZEPHYR_LIB_UTILS_DATA_FILES, "^zephyr/include/zephyr/data/cobs\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_FILES, "^zephyr/lib/utils/cobs\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_FILES, "^zephyr/include/zephyr/data/json\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_FILES, "^zephyr/lib/utils/json\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_FILES, "^zephyr/include/zephyr/data/navigation\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_DATA component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_DATA", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_DATA_FILES))))"},
    {"ZEPHYR_LIB_UTILS_DATA", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_DATA_FILES))))"},
    {"ZEPHYR_LIB_UTILS_DATA", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_DATA_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_DATA component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_DATA", ZEPHYR_LIB_UTILS_DATA_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_DATA component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_DATA"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_DATA"
-doc_end
