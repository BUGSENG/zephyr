-file_tag+={ZEPHYR_DRIVERS_LORA_FILES, "^zephyr/include/zephyr/drivers/lora\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_LORA_FILES, "^zephyr/drivers/lora/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_LORA component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_LORA", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_LORA_FILES))))"},
    {"ZEPHYR_DRIVERS_LORA", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_LORA_FILES))))"},
    {"ZEPHYR_DRIVERS_LORA", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_LORA_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_LORA component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_LORA", ZEPHYR_DRIVERS_LORA_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_LORA component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_LORA"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_LORA"
-doc_end
