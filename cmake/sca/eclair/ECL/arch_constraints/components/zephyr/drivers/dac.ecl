-file_tag+={ZEPHYR_DRIVERS_DAC_FILES, "^zephyr/include/zephyr/drivers/dac\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_DAC_FILES, "^zephyr/drivers/dac/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DAC_FILES, "^zephyr/include/zephyr/drivers/dac/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DAC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/dac.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_DAC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_DAC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DAC_FILES))))"},
    {"ZEPHYR_DRIVERS_DAC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_DAC_FILES))))"},
    {"ZEPHYR_DRIVERS_DAC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DAC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_DAC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_DAC", ZEPHYR_DRIVERS_DAC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_DAC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_DAC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_DAC"
-doc_end
