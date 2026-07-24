-file_tag+={ZEPHYR_ARCH_COMMON_FILES, "^zephyr/arch/common/.*\\.[ch]$"}
-file_tag+={ZEPHYR_ARCH_COMMON_FILES, "^zephyr/include/zephyr/arch/common/.*\\.[ch]$"}

-doc_begin="The ZEPHYR_ARCH_COMMON component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_ARCH_COMMON", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_ARCH_COMMON_FILES))))"},
    {"ZEPHYR_ARCH_COMMON", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_ARCH_COMMON_FILES))))"},
    {"ZEPHYR_ARCH_COMMON", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_ARCH_COMMON_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_ARCH_COMMON component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_ARCH_COMMON", ZEPHYR_ARCH_COMMON_FILES}
-doc_end

-doc_begin="Show ZEPHYR_ARCH_COMMON component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_ARCH_COMMON"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_ARCH_COMMON"
-doc_end
