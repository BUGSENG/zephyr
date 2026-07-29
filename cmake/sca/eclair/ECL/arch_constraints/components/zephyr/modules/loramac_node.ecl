-file_tag+={ZEPHYR_MODULES_LORAMAC_NODE_FILES, "^.*/modules/loramac-node/.*$"}

-doc_begin="The ZEPHYR_MODULES_LORAMAC_NODE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_LORAMAC_NODE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_LORAMAC_NODE_FILES))))"},
    {"ZEPHYR_MODULES_LORAMAC_NODE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_LORAMAC_NODE_FILES))))"},
    {"ZEPHYR_MODULES_LORAMAC_NODE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_LORAMAC_NODE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_LORAMAC_NODE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_LORAMAC_NODE", ZEPHYR_MODULES_LORAMAC_NODE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_LORAMAC_NODE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_LORAMAC_NODE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_LORAMAC_NODE"
-doc_end
