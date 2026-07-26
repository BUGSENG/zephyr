-file_tag+={ZEPHYR_SUBSYS_TESTSUITE_FILES, "^subsys/testsuite/.*$"}
-file_tag+={ZEPHYR_SUBSYS_TESTSUITE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/ztest_test\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_TESTSUITE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_TESTSUITE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TESTSUITE_FILES))))"},
    {"ZEPHYR_SUBSYS_TESTSUITE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_TESTSUITE_FILES))))"},
    {"ZEPHYR_SUBSYS_TESTSUITE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TESTSUITE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_TESTSUITE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_TESTSUITE", ZEPHYR_SUBSYS_TESTSUITE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_TESTSUITE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_TESTSUITE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_TESTSUITE"
-doc_end
