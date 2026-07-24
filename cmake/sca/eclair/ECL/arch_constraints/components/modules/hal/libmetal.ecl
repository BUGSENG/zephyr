-file_tag+={MODULES_HAL_LIBMETAL_FILES, "^modules/hal/libmetal/.*$"}
-file_tag+={MODULES_HAL_LIBMETAL_FILES, "^.*/modules/libmetal/.*$"}

-doc_begin="The MODULES_HAL_LIBMETAL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_HAL_LIBMETAL", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_HAL_LIBMETAL_FILES))))"},
    {"MODULES_HAL_LIBMETAL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_HAL_LIBMETAL_FILES))))"},
    {"MODULES_HAL_LIBMETAL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_HAL_LIBMETAL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_HAL_LIBMETAL component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_HAL_LIBMETAL", MODULES_HAL_LIBMETAL_FILES}
-doc_end

-doc_begin="Show MODULES_HAL_LIBMETAL component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_HAL_LIBMETAL"
-config=B.INDEPENDENCE,show_component_files+="MODULES_HAL_LIBMETAL"
-doc_end
