-file_tag+={ZEPHYR_DRIVERS_COMPARATOR_FILES, "^include/zephyr/drivers/comparator\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_COMPARATOR_FILES, "^drivers/comparator/.*$"}
-file_tag+={ZEPHYR_DRIVERS_COMPARATOR_FILES, "^include/zephyr/drivers/comparator/.*$"}
-file_tag+={ZEPHYR_DRIVERS_COMPARATOR_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/comparator.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_COMPARATOR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_COMPARATOR", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_COMPARATOR_FILES))))"},
    {"ZEPHYR_DRIVERS_COMPARATOR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_COMPARATOR_FILES))))"},
    {"ZEPHYR_DRIVERS_COMPARATOR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_COMPARATOR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_COMPARATOR component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_COMPARATOR", ZEPHYR_DRIVERS_COMPARATOR_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_COMPARATOR component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_COMPARATOR"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_COMPARATOR"
-doc_end
