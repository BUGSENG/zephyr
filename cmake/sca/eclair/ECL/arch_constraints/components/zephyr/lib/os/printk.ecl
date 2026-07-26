-file_tag+={ZEPHYR_LIB_OS_PRINTK_FILES, "^include/zephyr/sys/printk\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_PRINTK_FILES, "^include/zephyr/sys/printk-hooks\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_PRINTK_FILES, "^lib/os/printk\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_PRINTK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_PRINTK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_PRINTK_FILES))))"},
    {"ZEPHYR_LIB_OS_PRINTK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_PRINTK_FILES))))"},
    {"ZEPHYR_LIB_OS_PRINTK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_PRINTK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_PRINTK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_PRINTK", ZEPHYR_LIB_OS_PRINTK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_PRINTK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_PRINTK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_PRINTK"
-doc_end
