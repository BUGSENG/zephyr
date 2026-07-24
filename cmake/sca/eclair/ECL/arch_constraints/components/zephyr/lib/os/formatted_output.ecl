-file_tag+={ZEPHYR_LIB_OS_FORMATTED_OUTPUT_FILES, "^zephyr/include/zephyr/sys/cbprintf.*\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_FORMATTED_OUTPUT_FILES, "^zephyr/lib/os/cbprintf.*\\.c$"}

-doc_begin="The ZEPHYR_LIB_OS_FORMATTED_OUTPUT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_FORMATTED_OUTPUT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_FORMATTED_OUTPUT_FILES))))"},
    {"ZEPHYR_LIB_OS_FORMATTED_OUTPUT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_FORMATTED_OUTPUT_FILES))))"},
    {"ZEPHYR_LIB_OS_FORMATTED_OUTPUT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_FORMATTED_OUTPUT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_FORMATTED_OUTPUT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_FORMATTED_OUTPUT", ZEPHYR_LIB_OS_FORMATTED_OUTPUT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_FORMATTED_OUTPUT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_FORMATTED_OUTPUT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_FORMATTED_OUTPUT"
-doc_end
