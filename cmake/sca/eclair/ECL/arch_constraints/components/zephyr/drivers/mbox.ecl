-file_tag+={ZEPHYR_DRIVERS_MBOX_FILES, "^zephyr/include/zephyr/drivers/mbox\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_MBOX_FILES, "^zephyr/drivers/mbox/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MBOX_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/mbox.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_MBOX component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MBOX", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MBOX_FILES))))"},
    {"ZEPHYR_DRIVERS_MBOX", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MBOX_FILES))))"},
    {"ZEPHYR_DRIVERS_MBOX", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MBOX_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MBOX component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MBOX", ZEPHYR_DRIVERS_MBOX_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MBOX component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MBOX"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MBOX"
-doc_end
