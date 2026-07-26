-file_tag+={ZEPHYR_DRIVERS_FIRMWARE_FILES, "^drivers/firmware/scmi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FIRMWARE_FILES, "^include/zephyr/drivers/firmware/scmi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FIRMWARE_FILES, "^drivers/firmware/tisci/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FIRMWARE_FILES, "^include/zephyr/drivers/firmware/tisci/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FIRMWARE_FILES, "^drivers/firmware/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FIRMWARE_FILES, "^include/zephyr/drivers/firmware/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_FIRMWARE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_FIRMWARE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FIRMWARE_FILES))))"},
    {"ZEPHYR_DRIVERS_FIRMWARE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_FIRMWARE_FILES))))"},
    {"ZEPHYR_DRIVERS_FIRMWARE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FIRMWARE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_FIRMWARE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_FIRMWARE", ZEPHYR_DRIVERS_FIRMWARE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_FIRMWARE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_FIRMWARE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_FIRMWARE"
-doc_end
