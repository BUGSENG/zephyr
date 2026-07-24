-file_tag+={ZEPHYR_KERNEL_DEVICE_FILES, "^zephyr/include/zephyr/device\\.h$"}
-file_tag+={ZEPHYR_KERNEL_DEVICE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/device.*\\.h$"}
-file_tag+={ZEPHYR_KERNEL_DEVICE_FILES, "^zephyr/kernel/device\\.c$"}
-file_tag+={ZEPHYR_KERNEL_DEVICE_FILES, "^zephyr/include/zephyr/sys/device_mmio\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_DEVICE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_DEVICE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_DEVICE_FILES))))"},
    {"ZEPHYR_KERNEL_DEVICE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_DEVICE_FILES))))"},
    {"ZEPHYR_KERNEL_DEVICE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_DEVICE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_DEVICE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_DEVICE", ZEPHYR_KERNEL_DEVICE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_DEVICE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_DEVICE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_DEVICE"
-doc_end
