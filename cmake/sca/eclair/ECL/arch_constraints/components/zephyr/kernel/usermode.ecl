-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^include/zephyr/kernel/obj_core\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^include/zephyr/sys/internal/kobject_internal\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^include/zephyr/sys/kobject\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^kernel/obj_core\\.c$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^kernel/userspace_handler\\.c$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/kobject\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^.*/build/zephyr/include/generated/zephyr/kobj-types-enum\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^include/zephyr/internal/syscall_handler\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^include/zephyr/syscall\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscall_list\\.h$"}
-file_tag+={ZEPHYR_KERNEL_USERMODE_FILES, "^kernel/userspace\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_USERMODE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_USERMODE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_USERMODE_FILES))))"},
    {"ZEPHYR_KERNEL_USERMODE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_USERMODE_FILES))))"},
    {"ZEPHYR_KERNEL_USERMODE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_USERMODE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_USERMODE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_USERMODE", ZEPHYR_KERNEL_USERMODE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_USERMODE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_USERMODE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_USERMODE"
-doc_end
