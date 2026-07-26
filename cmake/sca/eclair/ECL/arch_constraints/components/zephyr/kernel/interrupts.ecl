-file_tag+={ZEPHYR_KERNEL_INTERRUPTS_FILES, "^include/zephyr/irq.*$"}
-file_tag+={ZEPHYR_KERNEL_INTERRUPTS_FILES, "^kernel/irq.*$"}

-doc_begin="The ZEPHYR_KERNEL_INTERRUPTS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_INTERRUPTS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_INTERRUPTS_FILES))))"},
    {"ZEPHYR_KERNEL_INTERRUPTS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_INTERRUPTS_FILES))))"},
    {"ZEPHYR_KERNEL_INTERRUPTS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_INTERRUPTS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_INTERRUPTS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_INTERRUPTS", ZEPHYR_KERNEL_INTERRUPTS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_INTERRUPTS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_INTERRUPTS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_INTERRUPTS"
-doc_end
