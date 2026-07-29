-file_tag+={ZEPHYR_MODULES_THRIFT_FILES, "^.*/modules/thrift/.*$"}

-doc_begin="The ZEPHYR_MODULES_THRIFT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_THRIFT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_THRIFT_FILES))))"},
    {"ZEPHYR_MODULES_THRIFT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_THRIFT_FILES))))"},
    {"ZEPHYR_MODULES_THRIFT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_THRIFT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_THRIFT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_THRIFT", ZEPHYR_MODULES_THRIFT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_THRIFT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_THRIFT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_THRIFT"
-doc_end
