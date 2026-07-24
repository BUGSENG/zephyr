-file_tag+={ZEPHYR_LIB_OS_POWEROFF_FILES, "^zephyr/include/zephyr/sys/poweroff\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_POWEROFF_FILES, "^zephyr/lib/os/poweroff\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_POWEROFF component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_POWEROFF", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_POWEROFF_FILES))))"},
    {"ZEPHYR_LIB_OS_POWEROFF", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_POWEROFF_FILES))))"},
    {"ZEPHYR_LIB_OS_POWEROFF", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_POWEROFF_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_POWEROFF component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_POWEROFF", ZEPHYR_LIB_OS_POWEROFF_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_POWEROFF component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_POWEROFF"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_POWEROFF"
-doc_end
