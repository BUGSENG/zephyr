-file_tag+={ZEPHYR_DRIVERS_CHARGER_FILES, "^zephyr/include/zephyr/drivers/charger\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_CHARGER_FILES, "^zephyr/drivers/charger/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CHARGER_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/charger.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_CHARGER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CHARGER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CHARGER_FILES))))"},
    {"ZEPHYR_DRIVERS_CHARGER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CHARGER_FILES))))"},
    {"ZEPHYR_DRIVERS_CHARGER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CHARGER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CHARGER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CHARGER", ZEPHYR_DRIVERS_CHARGER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CHARGER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CHARGER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CHARGER"
-doc_end
