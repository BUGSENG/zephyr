-file_tag+={ZEPHYR_LIB_UTILS_BASE64_FILES, "^zephyr/include/zephyr/sys/base64\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_BASE64_FILES, "^zephyr/lib/utils/base64\\.c$"}

-doc_begin="The ZEPHYR_LIB_UTILS_BASE64 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_BASE64", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_BASE64_FILES))))"},
    {"ZEPHYR_LIB_UTILS_BASE64", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_BASE64_FILES))))"},
    {"ZEPHYR_LIB_UTILS_BASE64", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_BASE64_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_BASE64 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_BASE64", ZEPHYR_LIB_UTILS_BASE64_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_BASE64 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_BASE64"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_BASE64"
-doc_end
