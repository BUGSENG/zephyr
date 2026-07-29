-file_tag+={MODULES_HAL_CMSIS_6_FILES, "^.*/modules/hal/cmsis_6/CMSIS/.*$"}

-doc_begin="The MODULES_HAL_CMSIS_6 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_HAL_CMSIS_6", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_HAL_CMSIS_6_FILES))))"},
    {"MODULES_HAL_CMSIS_6", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_HAL_CMSIS_6_FILES))))"},
    {"MODULES_HAL_CMSIS_6", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_HAL_CMSIS_6_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_HAL_CMSIS_6 component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_HAL_CMSIS_6", MODULES_HAL_CMSIS_6_FILES}
-doc_end

-doc_begin="Show MODULES_HAL_CMSIS_6 component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_HAL_CMSIS_6"
-config=B.INDEPENDENCE,show_component_files+="MODULES_HAL_CMSIS_6"
-doc_end
