-file_tag+={ZEPHYR_LIB_OS_REBOOT_FILES, "^zephyr/include/zephyr/sys/reboot\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_REBOOT_FILES, "^zephyr/lib/os/reboot\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_REBOOT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_REBOOT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_REBOOT_FILES))))"},
    {"ZEPHYR_LIB_OS_REBOOT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_REBOOT_FILES))))"},
    {"ZEPHYR_LIB_OS_REBOOT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_REBOOT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_REBOOT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_REBOOT", ZEPHYR_LIB_OS_REBOOT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_REBOOT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_REBOOT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_REBOOT"
-doc_end
