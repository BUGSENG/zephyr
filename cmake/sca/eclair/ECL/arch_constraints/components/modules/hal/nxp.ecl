-file_tag+={MODULES_HAL_NXP_FILES, "^modules/hal/nxp/.*$"}

-doc_begin="The MODULES_HAL_NXP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_HAL_NXP", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_HAL_NXP_FILES))))"},
    {"MODULES_HAL_NXP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_HAL_NXP_FILES))))"},
    {"MODULES_HAL_NXP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_HAL_NXP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_HAL_NXP component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_HAL_NXP", MODULES_HAL_NXP_FILES}
-doc_end

-doc_begin="Show MODULES_HAL_NXP component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_HAL_NXP"
-config=B.INDEPENDENCE,show_component_files+="MODULES_HAL_NXP"
-doc_end
