-file_tag+={ZEPHYR_LIB_UUID_FILES, "^lib/uuid/.*$"}
-file_tag+={ZEPHYR_LIB_UUID_FILES, "^include/zephyr/sys/uuid\\.h$"}

-doc_begin="The ZEPHYR_LIB_UUID component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UUID", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UUID_FILES))))"},
    {"ZEPHYR_LIB_UUID", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UUID_FILES))))"},
    {"ZEPHYR_LIB_UUID", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UUID_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UUID component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UUID", ZEPHYR_LIB_UUID_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UUID component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UUID"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UUID"
-doc_end
