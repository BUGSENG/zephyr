-file_tag+={ZEPHYR_LIB_OS_CACHE_FILES, "^include/zephyr/cache\\.h$"}
-file_tag+={ZEPHYR_LIB_OS_CACHE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/cache.*\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_CACHE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_CACHE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CACHE_FILES))))"},
    {"ZEPHYR_LIB_OS_CACHE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_CACHE_FILES))))"},
    {"ZEPHYR_LIB_OS_CACHE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_CACHE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_CACHE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_CACHE", ZEPHYR_LIB_OS_CACHE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_CACHE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_CACHE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_CACHE"
-doc_end
