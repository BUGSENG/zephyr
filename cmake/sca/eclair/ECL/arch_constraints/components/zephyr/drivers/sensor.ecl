-file_tag+={ZEPHYR_DRIVERS_SENSOR_FILES, "^zephyr/include/zephyr/drivers/sensor\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SENSOR_FILES, "^zephyr/drivers/sensor/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SENSOR_FILES, "^zephyr/include/zephyr/drivers/sensor/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SENSOR_FILES, "^zephyr/include/zephyr/drivers/sensor.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SENSOR_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/sensor.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SENSOR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SENSOR", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SENSOR_FILES))))"},
    {"ZEPHYR_DRIVERS_SENSOR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SENSOR_FILES))))"},
    {"ZEPHYR_DRIVERS_SENSOR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SENSOR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SENSOR component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SENSOR", ZEPHYR_DRIVERS_SENSOR_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SENSOR component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SENSOR"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SENSOR"
-doc_end
