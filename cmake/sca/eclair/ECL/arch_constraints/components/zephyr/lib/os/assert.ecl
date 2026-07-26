-file_tag+={ZEPHYR_LIB_OS_ASSERT_FILES, "^include/zephyr/sys/__assert\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_ASSERT_FILES, "^lib/os/assert\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_ASSERT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_ASSERT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_ASSERT_FILES))))"},
    {"ZEPHYR_LIB_OS_ASSERT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_ASSERT_FILES))))"},
    {"ZEPHYR_LIB_OS_ASSERT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_ASSERT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_ASSERT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_ASSERT", ZEPHYR_LIB_OS_ASSERT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_ASSERT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_ASSERT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_ASSERT"
-doc_end
