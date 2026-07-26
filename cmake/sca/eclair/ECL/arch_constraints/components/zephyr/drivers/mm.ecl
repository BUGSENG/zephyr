-file_tag+={ZEPHYR_DRIVERS_MM_FILES, "^drivers/mm/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MM_FILES, "^include/zephyr/drivers/mm/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_MM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MM_FILES))))"},
    {"ZEPHYR_DRIVERS_MM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MM_FILES))))"},
    {"ZEPHYR_DRIVERS_MM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MM", ZEPHYR_DRIVERS_MM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MM"
-doc_end
