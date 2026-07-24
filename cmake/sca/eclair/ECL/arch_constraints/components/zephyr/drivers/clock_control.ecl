-file_tag+={ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES, "^zephyr/include/zephyr/drivers/clock_control\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES, "^zephyr/drivers/clock_control/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES, "^zephyr/include/zephyr/drivers/clock_control/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_CLOCK_CONTROL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CLOCK_CONTROL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES))))"},
    {"ZEPHYR_DRIVERS_CLOCK_CONTROL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES))))"},
    {"ZEPHYR_DRIVERS_CLOCK_CONTROL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CLOCK_CONTROL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CLOCK_CONTROL", ZEPHYR_DRIVERS_CLOCK_CONTROL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CLOCK_CONTROL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CLOCK_CONTROL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CLOCK_CONTROL"
-doc_end
