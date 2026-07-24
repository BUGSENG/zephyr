-file_tag+={ZEPHYR_SUBSYS_MEM_MGMT_FILES, "^zephyr/subsys/mem_mgmt/.*$"}
-file_tag+={ZEPHYR_SUBSYS_MEM_MGMT_FILES, "^zephyr/include/zephyr/mem_mgmt/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_MEM_MGMT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_MEM_MGMT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_MEM_MGMT_FILES))))"},
    {"ZEPHYR_SUBSYS_MEM_MGMT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_MEM_MGMT_FILES))))"},
    {"ZEPHYR_SUBSYS_MEM_MGMT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_MEM_MGMT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_MEM_MGMT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_MEM_MGMT", ZEPHYR_SUBSYS_MEM_MGMT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_MEM_MGMT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_MEM_MGMT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_MEM_MGMT"
-doc_end
