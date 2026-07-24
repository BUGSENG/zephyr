-file_tag+={ZEPHYR_LIB_OS_ZVFS_FILES, "^zephyr/include/zephyr/zvfs/.*$"}
-file_tag+={ZEPHYR_LIB_OS_ZVFS_FILES, "^zephyr/lib/os/zvfs/.*$"}
-file_tag+={ZEPHYR_LIB_OS_ZVFS_FILES, "^zephyr/include/zephyr/sys/fdtable\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_ZVFS_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/fdtable\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_ZVFS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_ZVFS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_ZVFS_FILES))))"},
    {"ZEPHYR_LIB_OS_ZVFS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_ZVFS_FILES))))"},
    {"ZEPHYR_LIB_OS_ZVFS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_ZVFS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_ZVFS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_ZVFS", ZEPHYR_LIB_OS_ZVFS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_ZVFS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_ZVFS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_ZVFS"
-doc_end
