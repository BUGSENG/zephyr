-file_tag+={ZEPHYR_SUBSYS_CPU_FREQ_FILES, "^include/zephyr/cpu_freq/.*$"}
-file_tag+={ZEPHYR_SUBSYS_CPU_FREQ_FILES, "^subsys/cpu_freq/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_CPU_FREQ component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_CPU_FREQ", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CPU_FREQ_FILES))))"},
    {"ZEPHYR_SUBSYS_CPU_FREQ", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_CPU_FREQ_FILES))))"},
    {"ZEPHYR_SUBSYS_CPU_FREQ", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CPU_FREQ_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_CPU_FREQ component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_CPU_FREQ", ZEPHYR_SUBSYS_CPU_FREQ_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_CPU_FREQ component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_CPU_FREQ"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_CPU_FREQ"
-doc_end
