-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1_FILES, "^subsys/portability/cmsis_rtos_v1/.*$"}
-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1_FILES, "^include/zephyr/portability/cmsis_os\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1_FILES))))"},
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1_FILES))))"},
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1", ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V1"
-doc_end
