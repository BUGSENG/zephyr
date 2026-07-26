-file_tag+={ZEPHYR_DRIVERS_PECI_FILES, "^include/zephyr/drivers/peci\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_PECI_FILES, "^drivers/peci/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PECI_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/peci.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_PECI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PECI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PECI_FILES))))"},
    {"ZEPHYR_DRIVERS_PECI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PECI_FILES))))"},
    {"ZEPHYR_DRIVERS_PECI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PECI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PECI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PECI", ZEPHYR_DRIVERS_PECI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PECI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PECI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PECI"
-doc_end
