-file_tag+={ZEPHYR_KERNEL_ARCH_INTERFACE_FILES, "^kernel/include/kernel_arch_interface\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_ARCH_INTERFACE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_ARCH_INTERFACE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_ARCH_INTERFACE_FILES))))"},
    {"ZEPHYR_KERNEL_ARCH_INTERFACE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_ARCH_INTERFACE_FILES))))"},
    {"ZEPHYR_KERNEL_ARCH_INTERFACE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_ARCH_INTERFACE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_ARCH_INTERFACE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_ARCH_INTERFACE", ZEPHYR_KERNEL_ARCH_INTERFACE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_ARCH_INTERFACE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_ARCH_INTERFACE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_ARCH_INTERFACE"
-doc_end
