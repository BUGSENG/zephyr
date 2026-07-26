-file_tag+={ZEPHYR_MODULES_DHARA_FILES, "^modules/dhara/.*$"}

-doc_begin="The ZEPHYR_MODULES_DHARA component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_DHARA", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_DHARA_FILES))))"},
    {"ZEPHYR_MODULES_DHARA", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_DHARA_FILES))))"},
    {"ZEPHYR_MODULES_DHARA", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_DHARA_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_DHARA component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_DHARA", ZEPHYR_MODULES_DHARA_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_DHARA component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_DHARA"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_DHARA"
-doc_end
