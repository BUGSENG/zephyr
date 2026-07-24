eval_file_glob(join_paths(ecls_dir,"components/modules/debug/*.ecl"))

-file_tag+={MODULES_DEBUG_GENERIC_FILES, "^modules/debug/.*$"}

-doc_begin="The MODULES_DEBUG_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_DEBUG_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_DEBUG_GENERIC_FILES))))"},
    {"MODULES_DEBUG_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_DEBUG_GENERIC_FILES))))"},
    {"MODULES_DEBUG_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_DEBUG_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_DEBUG_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_DEBUG_GENERIC", MODULES_DEBUG_GENERIC_FILES}
-doc_end

-doc_begin="Show MODULES_DEBUG_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_DEBUG_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="MODULES_DEBUG_GENERIC"
-doc_end
