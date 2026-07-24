-file_tag+={ZEPHYR_LIB_OS_MPSC_FILES, "^zephyr/include/zephyr/sys/mpsc.*\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_MPSC_FILES, "^zephyr/lib/os/mpsc_pbuf\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_MPSC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_MPSC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_MPSC_FILES))))"},
    {"ZEPHYR_LIB_OS_MPSC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_MPSC_FILES))))"},
    {"ZEPHYR_LIB_OS_MPSC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_MPSC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_MPSC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_MPSC", ZEPHYR_LIB_OS_MPSC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_MPSC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_MPSC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_MPSC"
-doc_end
