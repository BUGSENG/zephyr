-file_tag+={ZEPHYR_LIB_OS_CPU_LOAD_FILES, "^include/zephyr/sys/cpu_load\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_CPU_LOAD_FILES, "^lib/os/cpu_load/.*$"}

-doc_begin="The ZEPHYR_LIB_OS_CPU_LOAD component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_CPU_LOAD", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CPU_LOAD_FILES))))"},
    {"ZEPHYR_LIB_OS_CPU_LOAD", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_CPU_LOAD_FILES))))"},
    {"ZEPHYR_LIB_OS_CPU_LOAD", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CPU_LOAD_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_CPU_LOAD component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_CPU_LOAD", ZEPHYR_LIB_OS_CPU_LOAD_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_CPU_LOAD component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_CPU_LOAD"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_CPU_LOAD"
-doc_end
