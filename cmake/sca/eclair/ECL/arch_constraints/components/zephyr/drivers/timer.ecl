-file_tag+={ZEPHYR_DRIVERS_TIMER_FILES, "^zephyr/drivers/timer/.*$"}
-file_tag+={ZEPHYR_DRIVERS_TIMER_FILES, "^zephyr/include/zephyr/drivers/timer/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_TIMER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_TIMER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_TIMER_FILES))))"},
    {"ZEPHYR_DRIVERS_TIMER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_TIMER_FILES))))"},
    {"ZEPHYR_DRIVERS_TIMER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_TIMER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_TIMER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_TIMER", ZEPHYR_DRIVERS_TIMER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_TIMER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_TIMER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_TIMER"
-doc_end
