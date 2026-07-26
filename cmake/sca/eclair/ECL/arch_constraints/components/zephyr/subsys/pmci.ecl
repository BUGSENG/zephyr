-file_tag+={ZEPHYR_SUBSYS_PMCI_FILES, "^subsys/pmci/.*$"}
-file_tag+={ZEPHYR_SUBSYS_PMCI_FILES, "^include/zephyr/pmci/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_PMCI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_PMCI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PMCI_FILES))))"},
    {"ZEPHYR_SUBSYS_PMCI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_PMCI_FILES))))"},
    {"ZEPHYR_SUBSYS_PMCI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PMCI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_PMCI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_PMCI", ZEPHYR_SUBSYS_PMCI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_PMCI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_PMCI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_PMCI"
-doc_end
