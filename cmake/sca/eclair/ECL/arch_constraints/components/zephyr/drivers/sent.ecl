-file_tag+={ZEPHYR_DRIVERS_SENT_FILES, "^zephyr/drivers/sent/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SENT_FILES, "^zephyr/include/zephyr/drivers/sent/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SENT_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/sent\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SENT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SENT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SENT_FILES))))"},
    {"ZEPHYR_DRIVERS_SENT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SENT_FILES))))"},
    {"ZEPHYR_DRIVERS_SENT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SENT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SENT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SENT", ZEPHYR_DRIVERS_SENT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SENT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SENT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SENT"
-doc_end
