-file_tag+={MODULES_LIB_NANOPB_FILES, "^modules/lib/nanopb/.*$"}

-doc_begin="The MODULES_LIB_NANOPB component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_NANOPB", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_NANOPB_FILES))))"},
    {"MODULES_LIB_NANOPB", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_NANOPB_FILES))))"},
    {"MODULES_LIB_NANOPB", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_NANOPB_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_NANOPB component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_NANOPB", MODULES_LIB_NANOPB_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_NANOPB component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_NANOPB"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_NANOPB"
-doc_end
