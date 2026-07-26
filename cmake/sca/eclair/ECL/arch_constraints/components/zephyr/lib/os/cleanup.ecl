-file_tag+={ZEPHYR_LIB_OS_CLEANUP_FILES, "^include/zephyr/cleanup\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_CLEANUP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_CLEANUP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CLEANUP_FILES))))"},
    {"ZEPHYR_LIB_OS_CLEANUP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_CLEANUP_FILES))))"},
    {"ZEPHYR_LIB_OS_CLEANUP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CLEANUP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_CLEANUP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_CLEANUP", ZEPHYR_LIB_OS_CLEANUP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_CLEANUP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_CLEANUP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_CLEANUP"
-doc_end
