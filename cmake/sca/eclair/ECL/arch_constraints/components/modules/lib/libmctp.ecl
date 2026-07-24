-file_tag+={MODULES_LIB_LIBMCTP_FILES, "^modules/lib/libmctp/.*$"}

-doc_begin="The MODULES_LIB_LIBMCTP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_LIBMCTP", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_LIBMCTP_FILES))))"},
    {"MODULES_LIB_LIBMCTP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_LIBMCTP_FILES))))"},
    {"MODULES_LIB_LIBMCTP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_LIBMCTP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_LIBMCTP component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_LIBMCTP", MODULES_LIB_LIBMCTP_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_LIBMCTP component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_LIBMCTP"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_LIBMCTP"
-doc_end
