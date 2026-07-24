-file_tag+={ZEPHYR_LIB_NET_BUF_FILES, "^zephyr/(include/zephyr|lib)/net_buf.*$"}

-doc_begin="The ZEPHYR_LIB_NET_BUF component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_NET_BUF", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_NET_BUF_FILES))))"},
    {"ZEPHYR_LIB_NET_BUF", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_NET_BUF_FILES))))"},
    {"ZEPHYR_LIB_NET_BUF", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_NET_BUF_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_NET_BUF component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_NET_BUF", ZEPHYR_LIB_NET_BUF_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_NET_BUF component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_NET_BUF"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_NET_BUF"
-doc_end
