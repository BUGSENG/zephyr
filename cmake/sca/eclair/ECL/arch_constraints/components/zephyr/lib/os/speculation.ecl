-file_tag+={ZEPHYR_LIB_OS_SPECULATION_FILES, "^zephyr/include/zephyr/sys/speculation\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_SPECULATION component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_SPECULATION", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_SPECULATION_FILES))))"},
    {"ZEPHYR_LIB_OS_SPECULATION", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_SPECULATION_FILES))))"},
    {"ZEPHYR_LIB_OS_SPECULATION", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_SPECULATION_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_SPECULATION component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_SPECULATION", ZEPHYR_LIB_OS_SPECULATION_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_SPECULATION component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_SPECULATION"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_SPECULATION"
-doc_end
