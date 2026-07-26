-file_tag+={ZEPHYR_SUBSYS_JWT_FILES, "^subsys/jwt/.*$"}
-file_tag+={ZEPHYR_SUBSYS_JWT_FILES, "^include/zephyr/data/jwt\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_JWT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_JWT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_JWT_FILES))))"},
    {"ZEPHYR_SUBSYS_JWT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_JWT_FILES))))"},
    {"ZEPHYR_SUBSYS_JWT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_JWT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_JWT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_JWT", ZEPHYR_SUBSYS_JWT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_JWT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_JWT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_JWT"
-doc_end
