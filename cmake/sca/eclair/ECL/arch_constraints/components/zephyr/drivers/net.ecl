-file_tag+={ZEPHYR_DRIVERS_NET_FILES, "^drivers/net/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_NET component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_NET", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_NET_FILES))))"},
    {"ZEPHYR_DRIVERS_NET", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_NET_FILES))))"},
    {"ZEPHYR_DRIVERS_NET", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_NET_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_NET component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_NET", ZEPHYR_DRIVERS_NET_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_NET component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_NET"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_NET"
-doc_end
