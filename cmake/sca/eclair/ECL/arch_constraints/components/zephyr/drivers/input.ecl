-file_tag+={ZEPHYR_DRIVERS_INPUT_FILES, "^drivers/input/.*$"}
-file_tag+={ZEPHYR_DRIVERS_INPUT_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/input.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_INPUT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_INPUT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_INPUT_FILES))))"},
    {"ZEPHYR_DRIVERS_INPUT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_INPUT_FILES))))"},
    {"ZEPHYR_DRIVERS_INPUT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_INPUT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_INPUT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_INPUT", ZEPHYR_DRIVERS_INPUT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_INPUT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_INPUT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_INPUT"
-doc_end
