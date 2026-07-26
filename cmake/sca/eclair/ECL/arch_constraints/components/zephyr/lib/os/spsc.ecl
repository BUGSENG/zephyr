-file_tag+={ZEPHYR_LIB_OS_SPSC_FILES, "^include/zephyr/sys/spsc.*\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_SPSC_FILES, "^lib/os/spsc_pbuf\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_SPSC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_SPSC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_SPSC_FILES))))"},
    {"ZEPHYR_LIB_OS_SPSC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_SPSC_FILES))))"},
    {"ZEPHYR_LIB_OS_SPSC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_SPSC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_SPSC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_SPSC", ZEPHYR_LIB_OS_SPSC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_SPSC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_SPSC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_SPSC"
-doc_end
