-file_tag+={ZEPHYR_DRIVERS_PWM_FILES, "^include/zephyr/drivers/pwm\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_PWM_FILES, "^drivers/pwm/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PWM_FILES, "^include/zephyr/drivers/pwm/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PWM_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/pwm.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_PWM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PWM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PWM_FILES))))"},
    {"ZEPHYR_DRIVERS_PWM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PWM_FILES))))"},
    {"ZEPHYR_DRIVERS_PWM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PWM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PWM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PWM", ZEPHYR_DRIVERS_PWM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PWM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PWM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PWM"
-doc_end
