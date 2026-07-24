-file_tag+={ZEPHYR_SUBSYS_DFU_FILES, "^zephyr/include/zephyr/dfu/.*$"}
-file_tag+={ZEPHYR_SUBSYS_DFU_FILES, "^zephyr/subsys/dfu/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_DFU component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_DFU", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DFU_FILES))))"},
    {"ZEPHYR_SUBSYS_DFU", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_DFU_FILES))))"},
    {"ZEPHYR_SUBSYS_DFU", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DFU_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_DFU component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_DFU", ZEPHYR_SUBSYS_DFU_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_DFU component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_DFU"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_DFU"
-doc_end
