-file_tag+={ZEPHYR_SUBSYS_DSP_FILES, "^subsys/dsp/.*$"}
-file_tag+={ZEPHYR_SUBSYS_DSP_FILES, "^include/zephyr/dsp/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_DSP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_DSP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DSP_FILES))))"},
    {"ZEPHYR_SUBSYS_DSP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_DSP_FILES))))"},
    {"ZEPHYR_SUBSYS_DSP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DSP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_DSP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_DSP", ZEPHYR_SUBSYS_DSP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_DSP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_DSP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_DSP"
-doc_end
