-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES, "^zephyr/subsys/portability/cmsis_rtos_v2/.*$"}
-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES, "^zephyr/include/zephyr/portability/cmsis_os2\\.h$"}
-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES, "^zephyr/include/zephyr/portability/cmsis_types\\.h$"}
-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES, "^zephyr/subsys/portability/cmsis_rtos_V2/.*$"}
-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES, "^zephyr/include/zephyr/portability/cmsis_os\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES))))"},
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES))))"},
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2", ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_PORTABILITY_CMSIS_RTOS_V2"
-doc_end
