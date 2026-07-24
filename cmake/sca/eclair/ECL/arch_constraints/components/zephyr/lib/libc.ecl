-file_tag+={ZEPHYR_LIB_LIBC_FILES, "^zephyr/lib/libc/.*$"}
-file_tag+={ZEPHYR_LIB_LIBC_FILES, "^zephyr/include/zephyr/sys/libc-hooks\\.h$"}
-file_tag+={ZEPHYR_LIB_LIBC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/libc-hooks\\.h$"}

-doc_begin="The ZEPHYR_LIB_LIBC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_LIBC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_LIBC_FILES))))"},
    {"ZEPHYR_LIB_LIBC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_LIBC_FILES))))"},
    {"ZEPHYR_LIB_LIBC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_LIBC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_LIBC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_LIBC", ZEPHYR_LIB_LIBC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_LIBC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_LIBC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_LIBC"
-doc_end
