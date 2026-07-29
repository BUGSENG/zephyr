-file_tag+={ZEPHYR_MODULES_CMSIS_DSP_FILES, "^.*/modules/cmsis-dsp/.*$"}

-doc_begin="The ZEPHYR_MODULES_CMSIS_DSP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_CMSIS_DSP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_CMSIS_DSP_FILES))))"},
    {"ZEPHYR_MODULES_CMSIS_DSP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_CMSIS_DSP_FILES))))"},
    {"ZEPHYR_MODULES_CMSIS_DSP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_CMSIS_DSP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_CMSIS_DSP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_CMSIS_DSP", ZEPHYR_MODULES_CMSIS_DSP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_CMSIS_DSP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_CMSIS_DSP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_CMSIS_DSP"
-doc_end
