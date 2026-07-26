-file_tag+={ZEPHYR_MODULES_CMSIS_NN_FILES, "^modules/cmsis-nn/.*$"}

-doc_begin="The ZEPHYR_MODULES_CMSIS_NN component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_CMSIS_NN", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_CMSIS_NN_FILES))))"},
    {"ZEPHYR_MODULES_CMSIS_NN", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_CMSIS_NN_FILES))))"},
    {"ZEPHYR_MODULES_CMSIS_NN", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_CMSIS_NN_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_CMSIS_NN component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_CMSIS_NN", ZEPHYR_MODULES_CMSIS_NN_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_CMSIS_NN component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_CMSIS_NN"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_CMSIS_NN"
-doc_end
