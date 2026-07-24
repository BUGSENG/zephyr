-file_tag+={ZEPHYR_DRIVERS_SYSCON_FILES, "^zephyr/include/zephyr/drivers/syscon\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SYSCON_FILES, "^zephyr/drivers/syscon/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SYSCON_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/syscon.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SYSCON component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SYSCON", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SYSCON_FILES))))"},
    {"ZEPHYR_DRIVERS_SYSCON", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SYSCON_FILES))))"},
    {"ZEPHYR_DRIVERS_SYSCON", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SYSCON_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SYSCON component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SYSCON", ZEPHYR_DRIVERS_SYSCON_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SYSCON component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SYSCON"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SYSCON"
-doc_end
