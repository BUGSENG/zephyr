-file_tag+={ZEPHYR_DRIVERS_LED_STRIP_FILES, "^zephyr/include/zephyr/drivers/led_strip\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_LED_STRIP_FILES, "^zephyr/drivers/led_strip/.*$"}
-file_tag+={ZEPHYR_DRIVERS_LED_STRIP_FILES, "^zephyr/include/zephyr/drivers/led_strip/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_LED_STRIP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_LED_STRIP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_LED_STRIP_FILES))))"},
    {"ZEPHYR_DRIVERS_LED_STRIP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_LED_STRIP_FILES))))"},
    {"ZEPHYR_DRIVERS_LED_STRIP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_LED_STRIP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_LED_STRIP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_LED_STRIP", ZEPHYR_DRIVERS_LED_STRIP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_LED_STRIP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_LED_STRIP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_LED_STRIP"
-doc_end
