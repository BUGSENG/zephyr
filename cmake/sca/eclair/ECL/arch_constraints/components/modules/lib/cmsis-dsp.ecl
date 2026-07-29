-file_tag+={MODULES_LIB_CMSIS_DSP_FILES, "^.*/modules/lib/cmsis-dsp/.*$"}

-doc_begin="The MODULES_LIB_CMSIS_DSP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_CMSIS_DSP", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_CMSIS_DSP_FILES))))"},
    {"MODULES_LIB_CMSIS_DSP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_CMSIS_DSP_FILES))))"},
    {"MODULES_LIB_CMSIS_DSP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_CMSIS_DSP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_CMSIS_DSP component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_CMSIS_DSP", MODULES_LIB_CMSIS_DSP_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_CMSIS_DSP component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_CMSIS_DSP"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_CMSIS_DSP"
-doc_end
