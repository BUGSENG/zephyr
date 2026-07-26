-file_tag+={ZEPHYR_SUBSYS_STORAGE_FILES, "^subsys/storage/.*$"}
-file_tag+={ZEPHYR_SUBSYS_STORAGE_FILES, "^include/zephyr/storage/flash_map\\.h$"}
-file_tag+={ZEPHYR_SUBSYS_STORAGE_FILES, "^include/zephyr/storage/stream_flash\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_STORAGE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_STORAGE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_STORAGE_FILES))))"},
    {"ZEPHYR_SUBSYS_STORAGE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_STORAGE_FILES))))"},
    {"ZEPHYR_SUBSYS_STORAGE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_STORAGE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_STORAGE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_STORAGE", ZEPHYR_SUBSYS_STORAGE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_STORAGE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_STORAGE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_STORAGE"
-doc_end
