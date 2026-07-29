-file_tag+={ZEPHYR_MODULES_LORA_BASICS_MODEM_FILES, "^.*/modules/lora-basics-modem/.*$"}

-doc_begin="The ZEPHYR_MODULES_LORA_BASICS_MODEM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_LORA_BASICS_MODEM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_LORA_BASICS_MODEM_FILES))))"},
    {"ZEPHYR_MODULES_LORA_BASICS_MODEM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_LORA_BASICS_MODEM_FILES))))"},
    {"ZEPHYR_MODULES_LORA_BASICS_MODEM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_LORA_BASICS_MODEM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_LORA_BASICS_MODEM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_LORA_BASICS_MODEM", ZEPHYR_MODULES_LORA_BASICS_MODEM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_LORA_BASICS_MODEM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_LORA_BASICS_MODEM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_LORA_BASICS_MODEM"
-doc_end
