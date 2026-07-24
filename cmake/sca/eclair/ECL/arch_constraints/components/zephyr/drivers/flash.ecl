-file_tag+={ZEPHYR_DRIVERS_FLASH_FILES, "^zephyr/include/zephyr/drivers/flash\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_FLASH_FILES, "^zephyr/drivers/flash/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FLASH_FILES, "^zephyr/include/zephyr/drivers/flash/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FLASH_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/flash.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_FLASH component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_FLASH", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FLASH_FILES))))"},
    {"ZEPHYR_DRIVERS_FLASH", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_FLASH_FILES))))"},
    {"ZEPHYR_DRIVERS_FLASH", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FLASH_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_FLASH component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_FLASH", ZEPHYR_DRIVERS_FLASH_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_FLASH component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_FLASH"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_FLASH"
-doc_end
