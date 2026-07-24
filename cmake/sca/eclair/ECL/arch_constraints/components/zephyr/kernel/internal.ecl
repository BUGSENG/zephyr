-file_tag+={ZEPHYR_KERNEL_INTERNAL_FILES, "^zephyr/kernel/include/kernel_internal\\.h$"}
-file_tag+={ZEPHYR_KERNEL_INTERNAL_FILES, "^zephyr/lib/os/thread_entry\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_INTERNAL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_INTERNAL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_INTERNAL_FILES))))"},
    {"ZEPHYR_KERNEL_INTERNAL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_INTERNAL_FILES))))"},
    {"ZEPHYR_KERNEL_INTERNAL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_INTERNAL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_INTERNAL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_INTERNAL", ZEPHYR_KERNEL_INTERNAL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_INTERNAL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_INTERNAL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_INTERNAL"
-doc_end
