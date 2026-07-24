-file_tag+={ZEPHYR_SUBSYS_ZBUS_FILES, "^zephyr/subsys/zbus/.*$"}
-file_tag+={ZEPHYR_SUBSYS_ZBUS_FILES, "^zephyr/include/zephyr/zbus/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_ZBUS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_ZBUS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_ZBUS_FILES))))"},
    {"ZEPHYR_SUBSYS_ZBUS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_ZBUS_FILES))))"},
    {"ZEPHYR_SUBSYS_ZBUS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_ZBUS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_ZBUS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_ZBUS", ZEPHYR_SUBSYS_ZBUS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_ZBUS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_ZBUS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_ZBUS"
-doc_end
