-file_tag+={ZEPHYR_KERNEL_VERSION_FILES, "^kernel/version\\.c$"}
-file_tag+={ZEPHYR_KERNEL_VERSION_FILES, "^include/zephyr/kernel_version\\.h$"}
-file_tag+={ZEPHYR_KERNEL_VERSION_FILES, "^.*/build/zephyr/include/generated/zephyr/version\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_VERSION component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_VERSION", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_VERSION_FILES))))"},
    {"ZEPHYR_KERNEL_VERSION", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_VERSION_FILES))))"},
    {"ZEPHYR_KERNEL_VERSION", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_VERSION_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_VERSION component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_VERSION", ZEPHYR_KERNEL_VERSION_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_VERSION component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_VERSION"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_VERSION"
-doc_end
