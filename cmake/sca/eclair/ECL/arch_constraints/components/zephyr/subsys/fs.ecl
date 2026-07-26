-file_tag+={ZEPHYR_SUBSYS_FS_FILES, "^subsys/fs/.*$"}
-file_tag+={ZEPHYR_SUBSYS_FS_FILES, "^include/zephyr/fs/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_FS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_FS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_FS_FILES))))"},
    {"ZEPHYR_SUBSYS_FS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_FS_FILES))))"},
    {"ZEPHYR_SUBSYS_FS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_FS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_FS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_FS", ZEPHYR_SUBSYS_FS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_FS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_FS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_FS"
-doc_end
