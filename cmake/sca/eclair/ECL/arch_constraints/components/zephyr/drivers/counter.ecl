-file_tag+={ZEPHYR_DRIVERS_COUNTER_FILES, "^include/zephyr/drivers/counter\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_COUNTER_FILES, "^drivers/counter/.*$"}
-file_tag+={ZEPHYR_DRIVERS_COUNTER_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/counter.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_COUNTER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_COUNTER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_COUNTER_FILES))))"},
    {"ZEPHYR_DRIVERS_COUNTER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_COUNTER_FILES))))"},
    {"ZEPHYR_DRIVERS_COUNTER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_COUNTER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_COUNTER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_COUNTER", ZEPHYR_DRIVERS_COUNTER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_COUNTER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_COUNTER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_COUNTER"
-doc_end
