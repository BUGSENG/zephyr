-file_tag+={ZEPHYR_DRIVERS_SERIAL_FILES, "^drivers/serial/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SERIAL_FILES, "^include/zephyr/drivers/serial/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SERIAL_FILES, "^include/zephyr/drivers/uart/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SERIAL_FILES, "^include/zephyr/drivers/uart.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SERIAL_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/uart\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SERIAL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SERIAL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SERIAL_FILES))))"},
    {"ZEPHYR_DRIVERS_SERIAL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SERIAL_FILES))))"},
    {"ZEPHYR_DRIVERS_SERIAL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SERIAL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SERIAL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SERIAL", ZEPHYR_DRIVERS_SERIAL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SERIAL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SERIAL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SERIAL"
-doc_end
