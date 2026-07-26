-file_tag+={ZEPHYR_SUBSYS_LLEXT_FILES, "^subsys/llext/.*$"}
-file_tag+={ZEPHYR_SUBSYS_LLEXT_FILES, "^include/zephyr/llext/.*$"}
-file_tag+={ZEPHYR_SUBSYS_LLEXT_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/llext\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_LLEXT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_LLEXT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_LLEXT_FILES))))"},
    {"ZEPHYR_SUBSYS_LLEXT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_LLEXT_FILES))))"},
    {"ZEPHYR_SUBSYS_LLEXT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_LLEXT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_LLEXT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_LLEXT", ZEPHYR_SUBSYS_LLEXT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_LLEXT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_LLEXT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_LLEXT"
-doc_end
