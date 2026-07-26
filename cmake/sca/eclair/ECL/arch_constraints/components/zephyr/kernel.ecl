eval_file_glob(join_paths(ecls_dir,"components/zephyr/kernel/*.ecl"))

-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^kernel/.*$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/kernel/.*$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/kernel.*\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/barrier\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/atomic\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/atomic_types\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/atomic_builtin\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/sem\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/mutex\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/device_mmio\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/irq.*\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/init\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/app_memory/app_memdomain\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/app_memory/mem_domain\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/spinlock\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/kobject\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/internal/kobject_internal\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/internal/syscall_handler\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/device\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/syscall\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/fatal.*\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^include/zephyr/sys/errno_private\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/atomic_c\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/device.*\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/offsets\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/kobject\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/kernel.*\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscall_list\\.h$"}
-file_tag+={ZEPHYR_KERNEL_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/version\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_GENERIC_FILES))))"},
    {"ZEPHYR_KERNEL_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_GENERIC_FILES))))"},
    {"ZEPHYR_KERNEL_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_GENERIC", ZEPHYR_KERNEL_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_GENERIC"
-doc_end
