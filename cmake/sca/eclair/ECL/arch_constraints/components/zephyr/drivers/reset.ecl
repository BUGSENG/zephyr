-file_tag+={ZEPHYR_DRIVERS_RESET_FILES, "^zephyr/include/zephyr/drivers/reset\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_RESET_FILES, "^zephyr/drivers/reset/.*$"}
-file_tag+={ZEPHYR_DRIVERS_RESET_FILES, "^zephyr/include/zephyr/drivers/reset/.*$"}
-file_tag+={ZEPHYR_DRIVERS_RESET_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/reset.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_RESET component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_RESET", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_RESET_FILES))))"},
    {"ZEPHYR_DRIVERS_RESET", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_RESET_FILES))))"},
    {"ZEPHYR_DRIVERS_RESET", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_RESET_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_RESET component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_RESET", ZEPHYR_DRIVERS_RESET_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_RESET component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_RESET"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_RESET"
-doc_end
