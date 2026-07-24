-file_tag+={ZEPHYR_KERNEL_STRUCTS_FILES, "^zephyr/include/zephyr/kernel_structs\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_STRUCTS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_STRUCTS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_STRUCTS_FILES))))"},
    {"ZEPHYR_KERNEL_STRUCTS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_STRUCTS_FILES))))"},
    {"ZEPHYR_KERNEL_STRUCTS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_STRUCTS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_STRUCTS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_STRUCTS", ZEPHYR_KERNEL_STRUCTS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_STRUCTS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_STRUCTS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_STRUCTS"
-doc_end
