-file_tag+={ZEPHYR_KERNEL_USAGE_FILES, "^kernel/usage\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_USAGE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_USAGE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_USAGE_FILES))))"},
    {"ZEPHYR_KERNEL_USAGE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_USAGE_FILES))))"},
    {"ZEPHYR_KERNEL_USAGE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_USAGE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_USAGE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_USAGE", ZEPHYR_KERNEL_USAGE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_USAGE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_USAGE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_USAGE"
-doc_end
