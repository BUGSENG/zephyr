-file_tag+={ZEPHYR_DRIVERS_I2S_FILES, "^include/zephyr/drivers/i2s\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_I2S_FILES, "^drivers/i2s/.*$"}
-file_tag+={ZEPHYR_DRIVERS_I2S_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/i2s.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_I2S component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_I2S", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_I2S_FILES))))"},
    {"ZEPHYR_DRIVERS_I2S", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_I2S_FILES))))"},
    {"ZEPHYR_DRIVERS_I2S", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_I2S_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_I2S component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_I2S", ZEPHYR_DRIVERS_I2S_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_I2S component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_I2S"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_I2S"
-doc_end
