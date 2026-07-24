-file_tag+={ZEPHYR_LIB_OS_CHECK_FILES, "^zephyr/include/zephyr/sys/check\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_CHECK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_CHECK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CHECK_FILES))))"},
    {"ZEPHYR_LIB_OS_CHECK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_CHECK_FILES))))"},
    {"ZEPHYR_LIB_OS_CHECK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CHECK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_CHECK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_CHECK", ZEPHYR_LIB_OS_CHECK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_CHECK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_CHECK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_CHECK"
-doc_end
