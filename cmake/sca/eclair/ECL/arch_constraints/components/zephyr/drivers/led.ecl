-file_tag+={ZEPHYR_DRIVERS_LED_FILES, "^zephyr/include/zephyr/drivers/led\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_LED_FILES, "^zephyr/drivers/led/.*$"}
-file_tag+={ZEPHYR_DRIVERS_LED_FILES, "^zephyr/include/zephyr/drivers/led/.*$"}
-file_tag+={ZEPHYR_DRIVERS_LED_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/led.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_LED component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_LED", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_LED_FILES))))"},
    {"ZEPHYR_DRIVERS_LED", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_LED_FILES))))"},
    {"ZEPHYR_DRIVERS_LED", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_LED_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_LED component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_LED", ZEPHYR_DRIVERS_LED_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_LED component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_LED"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_LED"
-doc_end
