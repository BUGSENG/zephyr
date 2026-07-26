-file_tag+={ZEPHYR_LIB_UTILS_ONOFF_FILES, "^include/zephyr/sys/onoff\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_ONOFF_FILES, "^lib/utils/onoff\\.c$"}

-doc_begin="The ZEPHYR_LIB_UTILS_ONOFF component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_ONOFF", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_ONOFF_FILES))))"},
    {"ZEPHYR_LIB_UTILS_ONOFF", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_ONOFF_FILES))))"},
    {"ZEPHYR_LIB_UTILS_ONOFF", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_ONOFF_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_ONOFF component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_ONOFF", ZEPHYR_LIB_UTILS_ONOFF_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_ONOFF component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_ONOFF"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_ONOFF"
-doc_end
