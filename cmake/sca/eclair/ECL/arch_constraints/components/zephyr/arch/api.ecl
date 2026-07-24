-file_tag+={ZEPHYR_ARCH_API_FILES, "^zephyr/include/zephyr/arch/arch_interface\\.h$"}
-file_tag+={ZEPHYR_ARCH_API_FILES, "^zephyr/include/zephyr/arch/cache\\.h$"}
-file_tag+={ZEPHYR_ARCH_API_FILES, "^zephyr/include/zephyr/arch/exception\\.h$"}

-doc_begin="The ZEPHYR_ARCH_API component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_ARCH_API", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_ARCH_API_FILES))))"},
    {"ZEPHYR_ARCH_API", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_ARCH_API_FILES))))"},
    {"ZEPHYR_ARCH_API", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_ARCH_API_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_ARCH_API component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_ARCH_API", ZEPHYR_ARCH_API_FILES}
-doc_end

-doc_begin="Show ZEPHYR_ARCH_API component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_ARCH_API"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_ARCH_API"
-doc_end
