-file_tag+={ZEPHYR_KERNEL_API_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/kernel\\.h$"}
-file_tag+={ZEPHYR_KERNEL_API_FILES, "^zephyr/include/zephyr/kernel\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_API component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_API", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_API_FILES))))"},
    {"ZEPHYR_KERNEL_API", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_API_FILES))))"},
    {"ZEPHYR_KERNEL_API", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_API_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_API component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_API", ZEPHYR_KERNEL_API_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_API component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_API"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_API"
-doc_end
