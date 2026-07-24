-file_tag+={ZEPHYR_SUBSYS_MODEM_FILES, "^zephyr/subsys/modem/.*$"}
-file_tag+={ZEPHYR_SUBSYS_MODEM_FILES, "^zephyr/include/zephyr/modem/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_MODEM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_MODEM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_MODEM_FILES))))"},
    {"ZEPHYR_SUBSYS_MODEM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_MODEM_FILES))))"},
    {"ZEPHYR_SUBSYS_MODEM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_MODEM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_MODEM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_MODEM", ZEPHYR_SUBSYS_MODEM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_MODEM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_MODEM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_MODEM"
-doc_end
