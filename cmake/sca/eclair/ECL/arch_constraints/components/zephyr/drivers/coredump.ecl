-file_tag+={ZEPHYR_DRIVERS_COREDUMP_FILES, "^include/zephyr/drivers/coredump\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_COREDUMP_FILES, "^drivers/coredump/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_COREDUMP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_COREDUMP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_COREDUMP_FILES))))"},
    {"ZEPHYR_DRIVERS_COREDUMP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_COREDUMP_FILES))))"},
    {"ZEPHYR_DRIVERS_COREDUMP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_COREDUMP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_COREDUMP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_COREDUMP", ZEPHYR_DRIVERS_COREDUMP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_COREDUMP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_COREDUMP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_COREDUMP"
-doc_end
