-file_tag+={ZEPHYR_KERNEL_FATAL_FILES, "^include/zephyr/fatal.*$"}
-file_tag+={ZEPHYR_KERNEL_FATAL_FILES, "^kernel/fatal\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_FATAL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_FATAL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_FATAL_FILES))))"},
    {"ZEPHYR_KERNEL_FATAL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_FATAL_FILES))))"},
    {"ZEPHYR_KERNEL_FATAL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_FATAL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_FATAL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_FATAL", ZEPHYR_KERNEL_FATAL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_FATAL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_FATAL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_FATAL"
-doc_end
