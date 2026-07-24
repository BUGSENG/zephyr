-file_tag+={ZEPHYR_DRIVERS_BBRAM_FILES, "^zephyr/include/zephyr/drivers/bbram\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_BBRAM_FILES, "^zephyr/drivers/bbram/.*$"}
-file_tag+={ZEPHYR_DRIVERS_BBRAM_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/bbram.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_BBRAM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_BBRAM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_BBRAM_FILES))))"},
    {"ZEPHYR_DRIVERS_BBRAM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_BBRAM_FILES))))"},
    {"ZEPHYR_DRIVERS_BBRAM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_BBRAM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_BBRAM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_BBRAM", ZEPHYR_DRIVERS_BBRAM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_BBRAM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_BBRAM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_BBRAM"
-doc_end
