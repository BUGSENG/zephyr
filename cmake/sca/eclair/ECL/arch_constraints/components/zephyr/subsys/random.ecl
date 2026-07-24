-file_tag+={ZEPHYR_SUBSYS_RANDOM_FILES, "^zephyr/subsys/random/.*$"}
-file_tag+={ZEPHYR_SUBSYS_RANDOM_FILES, "^zephyr/include/zephyr/random/.*$"}
-file_tag+={ZEPHYR_SUBSYS_RANDOM_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/random\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_RANDOM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_RANDOM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_RANDOM_FILES))))"},
    {"ZEPHYR_SUBSYS_RANDOM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_RANDOM_FILES))))"},
    {"ZEPHYR_SUBSYS_RANDOM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_RANDOM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_RANDOM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_RANDOM", ZEPHYR_SUBSYS_RANDOM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_RANDOM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_RANDOM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_RANDOM"
-doc_end
