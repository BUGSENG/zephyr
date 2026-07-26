-file_tag+={ZEPHYR_SUBSYS_CANBUS_FILES, "^subsys/canbus/.*$"}
-file_tag+={ZEPHYR_SUBSYS_CANBUS_FILES, "^include/zephyr/canbus/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_CANBUS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_CANBUS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CANBUS_FILES))))"},
    {"ZEPHYR_SUBSYS_CANBUS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_CANBUS_FILES))))"},
    {"ZEPHYR_SUBSYS_CANBUS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CANBUS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_CANBUS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_CANBUS", ZEPHYR_SUBSYS_CANBUS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_CANBUS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_CANBUS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_CANBUS"
-doc_end
