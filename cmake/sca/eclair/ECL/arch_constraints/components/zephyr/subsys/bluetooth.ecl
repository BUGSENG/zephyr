-file_tag+={ZEPHYR_SUBSYS_BLUETOOTH_FILES, "^zephyr/subsys/bluetooth/.*$"}
-file_tag+={ZEPHYR_SUBSYS_BLUETOOTH_FILES, "^zephyr/include/zephyr/bluetooth/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_BLUETOOTH component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_BLUETOOTH", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_BLUETOOTH_FILES))))"},
    {"ZEPHYR_SUBSYS_BLUETOOTH", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_BLUETOOTH_FILES))))"},
    {"ZEPHYR_SUBSYS_BLUETOOTH", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_BLUETOOTH_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_BLUETOOTH component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_BLUETOOTH", ZEPHYR_SUBSYS_BLUETOOTH_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_BLUETOOTH component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_BLUETOOTH"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_BLUETOOTH"
-doc_end
