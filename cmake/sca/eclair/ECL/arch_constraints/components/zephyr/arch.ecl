eval_file_glob(join_paths(ecls_dir,"components/zephyr/arch/*.ecl"))

-file_tag+={ZEPHYR_ARCH_GENERIC_FILES, "^zephyr/arch/.*$"}
-file_tag+={ZEPHYR_ARCH_GENERIC_FILES, "^zephyr/include/zephyr/arch/.*$"}
-file_tag+={ZEPHYR_ARCH_GENERIC_FILES, "^zephyr/include/zephyr/sys/sys_io\\.h$"}
-file_tag+={ZEPHYR_ARCH_GENERIC_FILES, "^zephyr/include/zephyr/sys/mem_manage\\.h$"}
-file_tag+={ZEPHYR_ARCH_GENERIC_FILES, "^zephyr/include/zephyr/sw_isr_table\\.h$"}
-file_tag+={ZEPHYR_ARCH_GENERIC_FILES, "^.*/build/zephyr/isr_tables\\.c$"}

-doc_begin="The ZEPHYR_ARCH_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_ARCH_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_ARCH_GENERIC_FILES))))"},
    {"ZEPHYR_ARCH_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_ARCH_GENERIC_FILES))))"},
    {"ZEPHYR_ARCH_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_ARCH_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_ARCH_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_ARCH_GENERIC", ZEPHYR_ARCH_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_ARCH_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_ARCH_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_ARCH_GENERIC"
-doc_end
