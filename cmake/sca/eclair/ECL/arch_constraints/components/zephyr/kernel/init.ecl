-file_tag+={ZEPHYR_KERNEL_INIT_FILES, "^zephyr/include/zephyr/init\\.h$"}
-file_tag+={ZEPHYR_KERNEL_INIT_FILES, "^zephyr/kernel/init\\.c$"}
-file_tag+={ZEPHYR_KERNEL_INIT_FILES, "^zephyr/kernel/banner\\.c$"}
-file_tag+={ZEPHYR_KERNEL_INIT_FILES, "^zephyr/kernel/boot_args\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_INIT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_INIT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_INIT_FILES))))"},
    {"ZEPHYR_KERNEL_INIT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_INIT_FILES))))"},
    {"ZEPHYR_KERNEL_INIT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_INIT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_INIT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_INIT", ZEPHYR_KERNEL_INIT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_INIT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_INIT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_INIT"
-doc_end
