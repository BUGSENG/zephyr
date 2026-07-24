-file_tag+={ZEPHYR_SUBSYS_LORAWAN_FILES, "^zephyr/subsys/lorawan/.*$"}
-file_tag+={ZEPHYR_SUBSYS_LORAWAN_FILES, "^zephyr/include/zephyr/lorawan/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_LORAWAN component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_LORAWAN", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_LORAWAN_FILES))))"},
    {"ZEPHYR_SUBSYS_LORAWAN", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_LORAWAN_FILES))))"},
    {"ZEPHYR_SUBSYS_LORAWAN", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_LORAWAN_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_LORAWAN component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_LORAWAN", ZEPHYR_SUBSYS_LORAWAN_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_LORAWAN component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_LORAWAN"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_LORAWAN"
-doc_end
