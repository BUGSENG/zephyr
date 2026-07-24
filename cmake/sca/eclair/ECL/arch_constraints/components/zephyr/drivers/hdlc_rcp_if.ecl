-file_tag+={ZEPHYR_DRIVERS_HDLC_RCP_IF_FILES, "^zephyr/drivers/hdlc_rcp_if/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_HDLC_RCP_IF component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_HDLC_RCP_IF", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HDLC_RCP_IF_FILES))))"},
    {"ZEPHYR_DRIVERS_HDLC_RCP_IF", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_HDLC_RCP_IF_FILES))))"},
    {"ZEPHYR_DRIVERS_HDLC_RCP_IF", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HDLC_RCP_IF_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_HDLC_RCP_IF component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_HDLC_RCP_IF", ZEPHYR_DRIVERS_HDLC_RCP_IF_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_HDLC_RCP_IF component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_HDLC_RCP_IF"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_HDLC_RCP_IF"
-doc_end
