-file_tag+={ZEPHYR_MODULES_TFLITE_MICRO_FILES, "^zephyr/modules/tflite-micro/.*$"}

-doc_begin="The ZEPHYR_MODULES_TFLITE_MICRO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_TFLITE_MICRO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_TFLITE_MICRO_FILES))))"},
    {"ZEPHYR_MODULES_TFLITE_MICRO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_TFLITE_MICRO_FILES))))"},
    {"ZEPHYR_MODULES_TFLITE_MICRO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_TFLITE_MICRO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_TFLITE_MICRO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_TFLITE_MICRO", ZEPHYR_MODULES_TFLITE_MICRO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_TFLITE_MICRO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_TFLITE_MICRO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_TFLITE_MICRO"
-doc_end
