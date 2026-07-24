-file_tag+={ZEPHYR_DRIVERS_EEPROM_FILES, "^zephyr/include/zephyr/drivers/eeprom\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_EEPROM_FILES, "^zephyr/drivers/eeprom/.*$"}
-file_tag+={ZEPHYR_DRIVERS_EEPROM_FILES, "^zephyr/include/zephyr/drivers/eeprom/.*$"}
-file_tag+={ZEPHYR_DRIVERS_EEPROM_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/eeprom.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_EEPROM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_EEPROM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_EEPROM_FILES))))"},
    {"ZEPHYR_DRIVERS_EEPROM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_EEPROM_FILES))))"},
    {"ZEPHYR_DRIVERS_EEPROM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_EEPROM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_EEPROM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_EEPROM", ZEPHYR_DRIVERS_EEPROM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_EEPROM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_EEPROM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_EEPROM"
-doc_end
