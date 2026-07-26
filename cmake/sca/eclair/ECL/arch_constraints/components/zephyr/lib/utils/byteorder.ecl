-file_tag+={ZEPHYR_LIB_UTILS_BYTEORDER_FILES, "^include/zephyr/sys/byteorder\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_BYTEORDER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_BYTEORDER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_BYTEORDER_FILES))))"},
    {"ZEPHYR_LIB_UTILS_BYTEORDER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_BYTEORDER_FILES))))"},
    {"ZEPHYR_LIB_UTILS_BYTEORDER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_BYTEORDER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_BYTEORDER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_BYTEORDER", ZEPHYR_LIB_UTILS_BYTEORDER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_BYTEORDER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_BYTEORDER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_BYTEORDER"
-doc_end
