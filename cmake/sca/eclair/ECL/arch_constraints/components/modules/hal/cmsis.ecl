-file_tag+={MODULES_HAL_CMSIS_FILES, "^.*/modules/hal/cmsis/CMSIS/.*$"}

-doc_begin="The MODULES_HAL_CMSIS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_HAL_CMSIS", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_HAL_CMSIS_FILES))))"},
    {"MODULES_HAL_CMSIS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_HAL_CMSIS_FILES))))"},
    {"MODULES_HAL_CMSIS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_HAL_CMSIS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_HAL_CMSIS component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_HAL_CMSIS", MODULES_HAL_CMSIS_FILES}
-doc_end

-doc_begin="Show MODULES_HAL_CMSIS component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_HAL_CMSIS"
-config=B.INDEPENDENCE,show_component_files+="MODULES_HAL_CMSIS"
-doc_end
