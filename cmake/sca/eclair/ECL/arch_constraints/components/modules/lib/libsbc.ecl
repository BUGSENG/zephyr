-file_tag+={MODULES_LIB_LIBSBC_FILES, "^modules/lib/libsbc/.*$"}

-doc_begin="The MODULES_LIB_LIBSBC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_LIBSBC", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_LIBSBC_FILES))))"},
    {"MODULES_LIB_LIBSBC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_LIBSBC_FILES))))"},
    {"MODULES_LIB_LIBSBC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_LIBSBC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_LIBSBC component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_LIBSBC", MODULES_LIB_LIBSBC_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_LIBSBC component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_LIBSBC"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_LIBSBC"
-doc_end
