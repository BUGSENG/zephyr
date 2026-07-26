-file_tag+={ZEPHYR_DRIVERS_OPAMP_FILES, "^include/zephyr/drivers/opamp\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_OPAMP_FILES, "^drivers/opamp/.*$"}
-file_tag+={ZEPHYR_DRIVERS_OPAMP_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/opamp.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_OPAMP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_OPAMP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_OPAMP_FILES))))"},
    {"ZEPHYR_DRIVERS_OPAMP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_OPAMP_FILES))))"},
    {"ZEPHYR_DRIVERS_OPAMP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_OPAMP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_OPAMP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_OPAMP", ZEPHYR_DRIVERS_OPAMP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_OPAMP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_OPAMP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_OPAMP"
-doc_end
