-file_tag+={ZEPHYR_LIB_HASH_FILES, "^zephyr/lib/hash/.*$"}
-file_tag+={ZEPHYR_LIB_HASH_FILES, "^zephyr/include/zephyr/sys/hash_map.*$"}
-file_tag+={ZEPHYR_LIB_HASH_FILES, "^zephyr/include/zephyr/sys/hash_function\\.h$"}

-doc_begin="The ZEPHYR_LIB_HASH component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_HASH", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_HASH_FILES))))"},
    {"ZEPHYR_LIB_HASH", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_HASH_FILES))))"},
    {"ZEPHYR_LIB_HASH", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_HASH_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_HASH component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_HASH", ZEPHYR_LIB_HASH_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_HASH component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_HASH"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_HASH"
-doc_end
