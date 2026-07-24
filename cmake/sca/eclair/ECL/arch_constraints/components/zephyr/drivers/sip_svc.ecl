-file_tag+={ZEPHYR_DRIVERS_SIP_SVC_FILES, "^zephyr/drivers/sip_svc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SIP_SVC_FILES, "^zephyr/include/zephyr/drivers/sip_svc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SIP_SVC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/sip_svc_driver\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SIP_SVC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SIP_SVC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SIP_SVC_FILES))))"},
    {"ZEPHYR_DRIVERS_SIP_SVC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SIP_SVC_FILES))))"},
    {"ZEPHYR_DRIVERS_SIP_SVC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SIP_SVC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SIP_SVC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SIP_SVC", ZEPHYR_DRIVERS_SIP_SVC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SIP_SVC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SIP_SVC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SIP_SVC"
-doc_end
