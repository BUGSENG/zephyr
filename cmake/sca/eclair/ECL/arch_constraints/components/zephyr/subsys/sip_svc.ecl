-file_tag+={ZEPHYR_SUBSYS_SIP_SVC_FILES, "^zephyr/subsys/sip_svc/.*$"}
-file_tag+={ZEPHYR_SUBSYS_SIP_SVC_FILES, "^zephyr/include/zephyr/sip_svc/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_SIP_SVC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_SIP_SVC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SIP_SVC_FILES))))"},
    {"ZEPHYR_SUBSYS_SIP_SVC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_SIP_SVC_FILES))))"},
    {"ZEPHYR_SUBSYS_SIP_SVC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SIP_SVC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_SIP_SVC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_SIP_SVC", ZEPHYR_SUBSYS_SIP_SVC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_SIP_SVC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_SIP_SVC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_SIP_SVC"
-doc_end
