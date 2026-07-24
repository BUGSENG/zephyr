eval_file_glob(join_paths(ecls_dir,"components/zephyr/lib/os/*.ecl"))

-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/lib/os/.*$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/printk\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/printk-hooks\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/cbprintf.*\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/reboot\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/poweroff\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/p4wq\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/mpsc.*\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/spsc_pbuf\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/__assert\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/mem_stats\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/fdtable\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/sys/speculation\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^zephyr/include/zephyr/zvfs/.*$"}
-file_tag+={ZEPHYR_LIB_OS_GENERIC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/fdtable\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_GENERIC_FILES))))"},
    {"ZEPHYR_LIB_OS_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_GENERIC_FILES))))"},
    {"ZEPHYR_LIB_OS_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_GENERIC", ZEPHYR_LIB_OS_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_GENERIC"
-doc_end
