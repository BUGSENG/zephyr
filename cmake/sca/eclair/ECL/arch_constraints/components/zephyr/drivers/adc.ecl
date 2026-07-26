-file_tag+={ZEPHYR_DRIVERS_ADC_FILES, "^include/zephyr/drivers/adc\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_ADC_FILES, "^drivers/adc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_ADC_FILES, "^include/zephyr/drivers/adc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_ADC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/adc.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_ADC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_ADC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ADC_FILES))))"},
    {"ZEPHYR_DRIVERS_ADC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_ADC_FILES))))"},
    {"ZEPHYR_DRIVERS_ADC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ADC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_ADC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_ADC", ZEPHYR_DRIVERS_ADC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_ADC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_ADC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_ADC"
-doc_end
