-file_tag+={ZEPHYR_DRIVERS_WATCHDOG_FILES, "^zephyr/include/zephyr/drivers/watchdog\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_WATCHDOG_FILES, "^zephyr/drivers/watchdog/.*$"}
-file_tag+={ZEPHYR_DRIVERS_WATCHDOG_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/watchdog.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_WATCHDOG component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_WATCHDOG", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_WATCHDOG_FILES))))"},
    {"ZEPHYR_DRIVERS_WATCHDOG", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_WATCHDOG_FILES))))"},
    {"ZEPHYR_DRIVERS_WATCHDOG", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_WATCHDOG_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_WATCHDOG component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_WATCHDOG", ZEPHYR_DRIVERS_WATCHDOG_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_WATCHDOG component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_WATCHDOG"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_WATCHDOG"
-doc_end
