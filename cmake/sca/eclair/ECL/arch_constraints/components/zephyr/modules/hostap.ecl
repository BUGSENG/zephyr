-file_tag+={ZEPHYR_MODULES_HOSTAP_FILES, "^zephyr/modules/hostap/.*$"}

-doc_begin="The ZEPHYR_MODULES_HOSTAP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HOSTAP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HOSTAP_FILES))))"},
    {"ZEPHYR_MODULES_HOSTAP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HOSTAP_FILES))))"},
    {"ZEPHYR_MODULES_HOSTAP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HOSTAP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HOSTAP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HOSTAP", ZEPHYR_MODULES_HOSTAP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HOSTAP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HOSTAP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HOSTAP"
-doc_end
