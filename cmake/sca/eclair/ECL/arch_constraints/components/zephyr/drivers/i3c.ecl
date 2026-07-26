-file_tag+={ZEPHYR_DRIVERS_I3C_FILES, "^include/zephyr/drivers/i3c\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_I3C_FILES, "^drivers/i3c/.*$"}
-file_tag+={ZEPHYR_DRIVERS_I3C_FILES, "^include/zephyr/drivers/i3c/.*$"}
-file_tag+={ZEPHYR_DRIVERS_I3C_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/i3c.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_I3C component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_I3C", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_I3C_FILES))))"},
    {"ZEPHYR_DRIVERS_I3C", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_I3C_FILES))))"},
    {"ZEPHYR_DRIVERS_I3C", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_I3C_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_I3C component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_I3C", ZEPHYR_DRIVERS_I3C_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_I3C component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_I3C"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_I3C"
-doc_end
