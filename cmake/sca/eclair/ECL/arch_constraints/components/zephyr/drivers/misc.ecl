-file_tag+={ZEPHYR_DRIVERS_MISC_FILES, "^include/zephyr/drivers/misc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MISC_FILES, "^drivers/misc/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_MISC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MISC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MISC_FILES))))"},
    {"ZEPHYR_DRIVERS_MISC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MISC_FILES))))"},
    {"ZEPHYR_DRIVERS_MISC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MISC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MISC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MISC", ZEPHYR_DRIVERS_MISC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MISC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MISC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MISC"
-doc_end
