-file_tag+={ZEPHYR_MODULES_ZCBOR_FILES, "^zephyr/modules/zcbor/.*$"}

-doc_begin="The ZEPHYR_MODULES_ZCBOR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_ZCBOR", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_ZCBOR_FILES))))"},
    {"ZEPHYR_MODULES_ZCBOR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_ZCBOR_FILES))))"},
    {"ZEPHYR_MODULES_ZCBOR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_ZCBOR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_ZCBOR component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_ZCBOR", ZEPHYR_MODULES_ZCBOR_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_ZCBOR component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_ZCBOR"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_ZCBOR"
-doc_end
