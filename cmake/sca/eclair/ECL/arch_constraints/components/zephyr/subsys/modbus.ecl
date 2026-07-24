-file_tag+={ZEPHYR_SUBSYS_MODBUS_FILES, "^zephyr/subsys/modbus/.*$"}
-file_tag+={ZEPHYR_SUBSYS_MODBUS_FILES, "^zephyr/include/zephyr/modbus/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_MODBUS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_MODBUS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_MODBUS_FILES))))"},
    {"ZEPHYR_SUBSYS_MODBUS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_MODBUS_FILES))))"},
    {"ZEPHYR_SUBSYS_MODBUS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_MODBUS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_MODBUS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_MODBUS", ZEPHYR_SUBSYS_MODBUS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_MODBUS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_MODBUS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_MODBUS"
-doc_end
