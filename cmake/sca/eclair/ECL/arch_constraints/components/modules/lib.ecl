eval_file_glob(join_paths(ecls_dir,"components/modules/lib/*.ecl"))

-file_tag+={MODULES_LIB_GENERIC_FILES, "^.*/modules/lib/.*$"}

-doc_begin="The MODULES_LIB_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_GENERIC_FILES))))"},
    {"MODULES_LIB_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_GENERIC_FILES))))"},
    {"MODULES_LIB_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_GENERIC", MODULES_LIB_GENERIC_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_GENERIC"
-doc_end
