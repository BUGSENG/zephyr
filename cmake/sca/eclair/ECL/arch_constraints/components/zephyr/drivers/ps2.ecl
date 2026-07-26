-file_tag+={ZEPHYR_DRIVERS_PS2_FILES, "^include/zephyr/drivers/ps2\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_PS2_FILES, "^drivers/ps2/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PS2_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/ps2.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_PS2 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PS2", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PS2_FILES))))"},
    {"ZEPHYR_DRIVERS_PS2", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PS2_FILES))))"},
    {"ZEPHYR_DRIVERS_PS2", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PS2_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PS2 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PS2", ZEPHYR_DRIVERS_PS2_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PS2 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PS2"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PS2"
-doc_end
