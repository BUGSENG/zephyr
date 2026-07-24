-file_tag+={ZEPHYR_DRIVERS_HAPTICS_FILES, "^zephyr/include/zephyr/drivers/haptics\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_HAPTICS_FILES, "^zephyr/drivers/haptics/.*$"}
-file_tag+={ZEPHYR_DRIVERS_HAPTICS_FILES, "^zephyr/include/zephyr/drivers/haptics/.*$"}
-file_tag+={ZEPHYR_DRIVERS_HAPTICS_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/haptics.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_HAPTICS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_HAPTICS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HAPTICS_FILES))))"},
    {"ZEPHYR_DRIVERS_HAPTICS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_HAPTICS_FILES))))"},
    {"ZEPHYR_DRIVERS_HAPTICS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HAPTICS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_HAPTICS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_HAPTICS", ZEPHYR_DRIVERS_HAPTICS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_HAPTICS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_HAPTICS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_HAPTICS"
-doc_end
