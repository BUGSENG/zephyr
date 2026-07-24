-file_tag+={ZEPHYR_DRIVERS_STEPPER_FILES, "^zephyr/drivers/stepper/.*$"}
-file_tag+={ZEPHYR_DRIVERS_STEPPER_FILES, "^zephyr/include/zephyr/drivers/stepper/.*$"}
-file_tag+={ZEPHYR_DRIVERS_STEPPER_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/stepper.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_STEPPER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_STEPPER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_STEPPER_FILES))))"},
    {"ZEPHYR_DRIVERS_STEPPER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_STEPPER_FILES))))"},
    {"ZEPHYR_DRIVERS_STEPPER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_STEPPER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_STEPPER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_STEPPER", ZEPHYR_DRIVERS_STEPPER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_STEPPER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_STEPPER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_STEPPER"
-doc_end
