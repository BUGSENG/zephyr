eval_file_glob(join_paths(ecls_dir,"components/modules/hal/*.ecl"))

-file_tag+={MODULES_HAL_GENERIC_FILES, "^.*/modules/hal/.*$"}

-doc_begin="The MODULES_HAL_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_HAL_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_HAL_GENERIC_FILES))))"},
    {"MODULES_HAL_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_HAL_GENERIC_FILES))))"},
    {"MODULES_HAL_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_HAL_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_HAL_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_HAL_GENERIC", MODULES_HAL_GENERIC_FILES}
-doc_end

-doc_begin="Show MODULES_HAL_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_HAL_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="MODULES_HAL_GENERIC"
-doc_end
