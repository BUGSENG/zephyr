-file_tag+={ZEPHYR_LIB_OS_P4WQ_FILES, "^include/zephyr/sys/p4wq\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_P4WQ_FILES, "^lib/os/p4wq\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_P4WQ component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_P4WQ", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_P4WQ_FILES))))"},
    {"ZEPHYR_LIB_OS_P4WQ", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_P4WQ_FILES))))"},
    {"ZEPHYR_LIB_OS_P4WQ", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_P4WQ_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_P4WQ component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_P4WQ", ZEPHYR_LIB_OS_P4WQ_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_P4WQ component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_P4WQ"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_P4WQ"
-doc_end
