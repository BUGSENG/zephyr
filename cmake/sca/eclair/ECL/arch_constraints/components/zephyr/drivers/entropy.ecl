-file_tag+={ZEPHYR_DRIVERS_ENTROPY_FILES, "^zephyr/include/zephyr/drivers/entropy\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_ENTROPY_FILES, "^zephyr/drivers/entropy/.*$"}
-file_tag+={ZEPHYR_DRIVERS_ENTROPY_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/entropy.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_ENTROPY component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_ENTROPY", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ENTROPY_FILES))))"},
    {"ZEPHYR_DRIVERS_ENTROPY", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_ENTROPY_FILES))))"},
    {"ZEPHYR_DRIVERS_ENTROPY", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ENTROPY_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_ENTROPY component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_ENTROPY", ZEPHYR_DRIVERS_ENTROPY_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_ENTROPY component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_ENTROPY"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_ENTROPY"
-doc_end
