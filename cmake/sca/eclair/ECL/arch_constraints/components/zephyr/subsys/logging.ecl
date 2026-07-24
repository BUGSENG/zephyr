-file_tag+={ZEPHYR_SUBSYS_LOGGING_FILES, "^zephyr/subsys/logging/.*$"}
-file_tag+={ZEPHYR_SUBSYS_LOGGING_FILES, "^zephyr/include/zephyr/logging/.*$"}
-file_tag+={ZEPHYR_SUBSYS_LOGGING_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/log_msg\\.h$"}
-file_tag+={ZEPHYR_SUBSYS_LOGGING_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/log_ctrl\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_LOGGING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_LOGGING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_LOGGING_FILES))))"},
    {"ZEPHYR_SUBSYS_LOGGING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_LOGGING_FILES))))"},
    {"ZEPHYR_SUBSYS_LOGGING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_LOGGING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_LOGGING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_LOGGING", ZEPHYR_SUBSYS_LOGGING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_LOGGING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_LOGGING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_LOGGING"
-doc_end
