-file_tag+={ZEPHYR_SUBSYS_IPC_FILES, "^zephyr/subsys/ipc/.*$"}
-file_tag+={ZEPHYR_SUBSYS_IPC_FILES, "^zephyr/include/zephyr/ipc/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_IPC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_IPC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_IPC_FILES))))"},
    {"ZEPHYR_SUBSYS_IPC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_IPC_FILES))))"},
    {"ZEPHYR_SUBSYS_IPC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_IPC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_IPC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_IPC", ZEPHYR_SUBSYS_IPC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_IPC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_IPC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_IPC"
-doc_end
