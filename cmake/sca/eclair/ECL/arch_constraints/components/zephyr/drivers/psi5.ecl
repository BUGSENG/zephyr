-file_tag+={ZEPHYR_DRIVERS_PSI5_FILES, "^drivers/psi5/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PSI5_FILES, "^include/zephyr/drivers/psi5/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PSI5_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/psi5\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_PSI5 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PSI5", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PSI5_FILES))))"},
    {"ZEPHYR_DRIVERS_PSI5", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PSI5_FILES))))"},
    {"ZEPHYR_DRIVERS_PSI5", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PSI5_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PSI5 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PSI5", ZEPHYR_DRIVERS_PSI5_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PSI5 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PSI5"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PSI5"
-doc_end
