-file_tag+={ZEPHYR_DRIVERS_W1_FILES, "^include/zephyr/drivers/w1\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_W1_FILES, "^drivers/w1/.*$"}
-file_tag+={ZEPHYR_DRIVERS_W1_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/w1.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_W1 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_W1", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_W1_FILES))))"},
    {"ZEPHYR_DRIVERS_W1", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_W1_FILES))))"},
    {"ZEPHYR_DRIVERS_W1", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_W1_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_W1 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_W1", ZEPHYR_DRIVERS_W1_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_W1 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_W1"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_W1"
-doc_end
