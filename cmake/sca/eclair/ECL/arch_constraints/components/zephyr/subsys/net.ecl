-file_tag+={ZEPHYR_SUBSYS_NET_FILES, "^zephyr/subsys/net/.*$"}
-file_tag+={ZEPHYR_SUBSYS_NET_FILES, "^zephyr/include/zephyr/net/.*$"}
-file_tag+={ZEPHYR_SUBSYS_NET_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/net_.*\\.h$"}
-file_tag+={ZEPHYR_SUBSYS_NET_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/socket.*\\.h$"}
-file_tag+={ZEPHYR_SUBSYS_NET_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/ethernet\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_NET component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_NET", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_NET_FILES))))"},
    {"ZEPHYR_SUBSYS_NET", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_NET_FILES))))"},
    {"ZEPHYR_SUBSYS_NET", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_NET_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_NET component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_NET", ZEPHYR_SUBSYS_NET_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_NET component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_NET"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_NET"
-doc_end
