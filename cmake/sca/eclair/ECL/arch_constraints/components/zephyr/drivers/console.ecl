-file_tag+={ZEPHYR_DRIVERS_CONSOLE_FILES, "^zephyr/drivers/console/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CONSOLE_FILES, "^zephyr/include/zephyr/drivers/console/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_CONSOLE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CONSOLE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CONSOLE_FILES))))"},
    {"ZEPHYR_DRIVERS_CONSOLE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CONSOLE_FILES))))"},
    {"ZEPHYR_DRIVERS_CONSOLE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CONSOLE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CONSOLE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CONSOLE", ZEPHYR_DRIVERS_CONSOLE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CONSOLE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CONSOLE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CONSOLE"
-doc_end
