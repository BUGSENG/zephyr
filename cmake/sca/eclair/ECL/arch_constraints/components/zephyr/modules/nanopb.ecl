-file_tag+={ZEPHYR_MODULES_NANOPB_FILES, "^zephyr/modules/nanopb/.*$"}

-doc_begin="The ZEPHYR_MODULES_NANOPB component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_NANOPB", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_NANOPB_FILES))))"},
    {"ZEPHYR_MODULES_NANOPB", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_NANOPB_FILES))))"},
    {"ZEPHYR_MODULES_NANOPB", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_NANOPB_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_NANOPB component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_NANOPB", ZEPHYR_MODULES_NANOPB_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_NANOPB component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_NANOPB"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_NANOPB"
-doc_end
