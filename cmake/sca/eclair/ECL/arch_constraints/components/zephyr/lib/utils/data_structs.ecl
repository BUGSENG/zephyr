-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/rb\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^lib/utils/rb\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/bitarray\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^lib/utils/bitarray\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/set\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^lib/utils/set\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/dlist\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/sflist\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/ring_buffer\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^lib/utils/ring_buffer\\.c$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/slist\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/types\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/list_gen\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^include/zephyr/sys/winstream\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES, "^lib/utils/winstream\\.c$"}

-doc_begin="The ZEPHYR_LIB_UTILS_DATA_STRUCTS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_DATA_STRUCTS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES))))"},
    {"ZEPHYR_LIB_UTILS_DATA_STRUCTS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES))))"},
    {"ZEPHYR_LIB_UTILS_DATA_STRUCTS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_DATA_STRUCTS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_DATA_STRUCTS", ZEPHYR_LIB_UTILS_DATA_STRUCTS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_DATA_STRUCTS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_DATA_STRUCTS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_DATA_STRUCTS"
-doc_end
