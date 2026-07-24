-file_tag+={ZEPHYR_KERNEL_POLLING_FILES, "^zephyr/kernel/poll\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_POLLING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_POLLING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_POLLING_FILES))))"},
    {"ZEPHYR_KERNEL_POLLING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_POLLING_FILES))))"},
    {"ZEPHYR_KERNEL_POLLING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_POLLING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_POLLING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_POLLING", ZEPHYR_KERNEL_POLLING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_POLLING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_POLLING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_POLLING"
-doc_end
