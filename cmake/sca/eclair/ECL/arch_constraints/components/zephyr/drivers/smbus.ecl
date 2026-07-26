-file_tag+={ZEPHYR_DRIVERS_SMBUS_FILES, "^include/zephyr/drivers/smbus\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SMBUS_FILES, "^drivers/smbus/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SMBUS_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/smbus.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SMBUS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SMBUS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SMBUS_FILES))))"},
    {"ZEPHYR_DRIVERS_SMBUS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SMBUS_FILES))))"},
    {"ZEPHYR_DRIVERS_SMBUS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SMBUS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SMBUS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SMBUS", ZEPHYR_DRIVERS_SMBUS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SMBUS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SMBUS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SMBUS"
-doc_end
