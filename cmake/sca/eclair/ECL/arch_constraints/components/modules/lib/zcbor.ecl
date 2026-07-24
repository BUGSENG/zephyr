-file_tag+={MODULES_LIB_ZCBOR_FILES, "^modules/lib/zcbor/.*$"}

-doc_begin="The MODULES_LIB_ZCBOR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_ZCBOR", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_ZCBOR_FILES))))"},
    {"MODULES_LIB_ZCBOR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_ZCBOR_FILES))))"},
    {"MODULES_LIB_ZCBOR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_ZCBOR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_ZCBOR component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_ZCBOR", MODULES_LIB_ZCBOR_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_ZCBOR component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_ZCBOR"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_ZCBOR"
-doc_end
