-file_tag+={ZEPHYR_MODULES_LIBLC3_FILES, "^modules/liblc3/.*$"}

-doc_begin="The ZEPHYR_MODULES_LIBLC3 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_LIBLC3", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_LIBLC3_FILES))))"},
    {"ZEPHYR_MODULES_LIBLC3", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_LIBLC3_FILES))))"},
    {"ZEPHYR_MODULES_LIBLC3", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_LIBLC3_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_LIBLC3 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_LIBLC3", ZEPHYR_MODULES_LIBLC3_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_LIBLC3 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_LIBLC3"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_LIBLC3"
-doc_end
