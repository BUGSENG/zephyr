-file_tag+={ZEPHYR_KERNEL_SMP_FILES, "^include/zephyr/spinlock\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SMP_FILES, "^kernel/spinlock_validate\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SMP_FILES, "^include/zephyr/kernel/smp\\.h$"}
-file_tag+={ZEPHYR_KERNEL_SMP_FILES, "^kernel/smp\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SMP_FILES, "^kernel/ipi\\.c$"}
-file_tag+={ZEPHYR_KERNEL_SMP_FILES, "^kernel/include/ipi\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_SMP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_SMP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_SMP_FILES))))"},
    {"ZEPHYR_KERNEL_SMP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_SMP_FILES))))"},
    {"ZEPHYR_KERNEL_SMP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_SMP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_SMP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_SMP", ZEPHYR_KERNEL_SMP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_SMP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_SMP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_SMP"
-doc_end
