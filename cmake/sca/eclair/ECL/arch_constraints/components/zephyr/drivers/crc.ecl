-file_tag+={ZEPHYR_DRIVERS_CRC_FILES, "^zephyr/include/zephyr/drivers/crc\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_CRC_FILES, "^zephyr/drivers/crc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CRC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/crc.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_CRC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CRC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CRC_FILES))))"},
    {"ZEPHYR_DRIVERS_CRC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CRC_FILES))))"},
    {"ZEPHYR_DRIVERS_CRC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CRC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CRC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CRC", ZEPHYR_DRIVERS_CRC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CRC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CRC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CRC"
-doc_end
