-file_tag+={ZEPHYR_KERNEL_ERRNO_FILES, "^zephyr/include/zephyr/sys/errno_private\\.h$"}
-file_tag+={ZEPHYR_KERNEL_ERRNO_FILES, "^zephyr/kernel/errno\\.c$"}
-file_tag+={ZEPHYR_KERNEL_ERRNO_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/errno.*\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_ERRNO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_ERRNO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_ERRNO_FILES))))"},
    {"ZEPHYR_KERNEL_ERRNO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_ERRNO_FILES))))"},
    {"ZEPHYR_KERNEL_ERRNO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_ERRNO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_ERRNO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_ERRNO", ZEPHYR_KERNEL_ERRNO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_ERRNO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_ERRNO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_ERRNO"
-doc_end
