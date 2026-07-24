-file_tag+={ZEPHYR_SUBSYS_DISK_FILES, "^zephyr/subsys/disk/.*$"}
-file_tag+={ZEPHYR_SUBSYS_DISK_FILES, "^zephyr/include/zephyr/storage/disk_access\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_DISK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_DISK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DISK_FILES))))"},
    {"ZEPHYR_SUBSYS_DISK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_DISK_FILES))))"},
    {"ZEPHYR_SUBSYS_DISK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DISK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_DISK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_DISK", ZEPHYR_SUBSYS_DISK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_DISK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_DISK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_DISK"
-doc_end
