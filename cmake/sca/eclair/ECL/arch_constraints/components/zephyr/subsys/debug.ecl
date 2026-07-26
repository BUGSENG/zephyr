-file_tag+={ZEPHYR_SUBSYS_DEBUG_FILES, "^subsys/debug/.*$"}
-file_tag+={ZEPHYR_SUBSYS_DEBUG_FILES, "^include/zephyr/debug/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_DEBUG component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_DEBUG", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DEBUG_FILES))))"},
    {"ZEPHYR_SUBSYS_DEBUG", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_DEBUG_FILES))))"},
    {"ZEPHYR_SUBSYS_DEBUG", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DEBUG_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_DEBUG component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_DEBUG", ZEPHYR_SUBSYS_DEBUG_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_DEBUG component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_DEBUG"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_DEBUG"
-doc_end
