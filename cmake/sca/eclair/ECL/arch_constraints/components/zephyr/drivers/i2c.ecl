-file_tag+={ZEPHYR_DRIVERS_I2C_FILES, "^include/zephyr/drivers/i2c.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_I2C_FILES, "^drivers/i2c/.*$"}
-file_tag+={ZEPHYR_DRIVERS_I2C_FILES, "^include/zephyr/drivers/i2c/.*$"}
-file_tag+={ZEPHYR_DRIVERS_I2C_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/i2c.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_I2C component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_I2C", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_I2C_FILES))))"},
    {"ZEPHYR_DRIVERS_I2C", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_I2C_FILES))))"},
    {"ZEPHYR_DRIVERS_I2C", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_I2C_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_I2C component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_I2C", ZEPHYR_DRIVERS_I2C_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_I2C component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_I2C"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_I2C"
-doc_end
