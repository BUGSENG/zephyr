-file_tag+={ZEPHYR_DRIVERS_BLUETOOTH_FILES, "^zephyr/include/zephyr/drivers/bluetooth\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_BLUETOOTH_FILES, "^zephyr/drivers/bluetooth/.*$"}
-file_tag+={ZEPHYR_DRIVERS_BLUETOOTH_FILES, "^zephyr/include/zephyr/drivers/bluetooth/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_BLUETOOTH component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_BLUETOOTH", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_BLUETOOTH_FILES))))"},
    {"ZEPHYR_DRIVERS_BLUETOOTH", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_BLUETOOTH_FILES))))"},
    {"ZEPHYR_DRIVERS_BLUETOOTH", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_BLUETOOTH_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_BLUETOOTH component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_BLUETOOTH", ZEPHYR_DRIVERS_BLUETOOTH_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_BLUETOOTH component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_BLUETOOTH"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_BLUETOOTH"
-doc_end
