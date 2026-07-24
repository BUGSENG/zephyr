-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/sem\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/include/zephyr/sys/sem\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/lib/os/sem\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/mutex\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/futex\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/include/zephyr/sys/mutex\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/lib/os/mutex\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/mutex\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/condvar\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/events\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/include/zephyr/sys/atomic.*$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/atomic_c\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/atomic_c\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/include/zephyr/sys/barrier\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SYNCHRONIZATION_FILES, "^zephyr/kernel/include/wait_q\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_SYNCHRONIZATION component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_SYNCHRONIZATION", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_SYNCHRONIZATION_FILES))))"},
    {"ZEPHYR_KERNEL_SYNCHRONIZATION", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_SYNCHRONIZATION_FILES))))"},
    {"ZEPHYR_KERNEL_SYNCHRONIZATION", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_SYNCHRONIZATION_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_SYNCHRONIZATION component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_SYNCHRONIZATION", ZEPHYR_KERNEL_SYNCHRONIZATION_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_SYNCHRONIZATION component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_SYNCHRONIZATION"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_SYNCHRONIZATION"
-doc_end
