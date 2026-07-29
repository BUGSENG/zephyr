eval_file_glob(join_paths(ecls_dir,"components/modules/fs/*.ecl"))

-file_tag+={MODULES_FS_GENERIC_FILES, "^.*/modules/fs/.*$"}

-doc_begin="The MODULES_FS_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_FS_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_FS_GENERIC_FILES))))"},
    {"MODULES_FS_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_FS_GENERIC_FILES))))"},
    {"MODULES_FS_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_FS_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_FS_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_FS_GENERIC", MODULES_FS_GENERIC_FILES}
-doc_end

-doc_begin="Show MODULES_FS_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_FS_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="MODULES_FS_GENERIC"
-doc_end
