-file_tag+={ZEPHYR_SUBSYS_INPUT_FILES, "^zephyr/subsys/input/.*$"}
-file_tag+={ZEPHYR_SUBSYS_INPUT_FILES, "^zephyr/include/zephyr/input/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_INPUT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_INPUT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_INPUT_FILES))))"},
    {"ZEPHYR_SUBSYS_INPUT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_INPUT_FILES))))"},
    {"ZEPHYR_SUBSYS_INPUT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_INPUT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_INPUT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_INPUT", ZEPHYR_SUBSYS_INPUT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_INPUT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_INPUT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_INPUT"
-doc_end
