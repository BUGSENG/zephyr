-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/kheap\\.c$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/mempool\\.c$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/mem_slab\\.c$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^include/zephyr/kernel/mm/.*$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/include/mmu\\.h$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/mmu\\.c$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/paging/.*$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/demand_paging\\.h$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^include/zephyr/kernel/mm\\.h$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^include/zephyr/kernel/internal/mm\\.h$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^include/zephyr/app_memory/.*$"}
-file_tag+={ZEPHYR_KERNEL_MEM_MGMT_FILES, "^kernel/mem_domain\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_MEM_MGMT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_MEM_MGMT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_MEM_MGMT_FILES))))"},
    {"ZEPHYR_KERNEL_MEM_MGMT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_MEM_MGMT_FILES))))"},
    {"ZEPHYR_KERNEL_MEM_MGMT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_MEM_MGMT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_MEM_MGMT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_MEM_MGMT", ZEPHYR_KERNEL_MEM_MGMT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_MEM_MGMT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_MEM_MGMT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_MEM_MGMT"
-doc_end
