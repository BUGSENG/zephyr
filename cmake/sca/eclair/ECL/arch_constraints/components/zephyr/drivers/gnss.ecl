-file_tag+={ZEPHYR_DRIVERS_GNSS_FILES, "^include/zephyr/drivers/gnss\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_GNSS_FILES, "^drivers/gnss/.*$"}
-file_tag+={ZEPHYR_DRIVERS_GNSS_FILES, "^include/zephyr/drivers/gnss/.*$"}
-file_tag+={ZEPHYR_DRIVERS_GNSS_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/gnss.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_GNSS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_GNSS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_GNSS_FILES))))"},
    {"ZEPHYR_DRIVERS_GNSS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_GNSS_FILES))))"},
    {"ZEPHYR_DRIVERS_GNSS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_GNSS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_GNSS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_GNSS", ZEPHYR_DRIVERS_GNSS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_GNSS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_GNSS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_GNSS"
-doc_end
