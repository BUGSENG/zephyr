-file_tag+={ZEPHYR_MODULES_FATFS_FILES, "^.*/modules/fatfs/.*$"}

-doc_begin="The ZEPHYR_MODULES_FATFS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_FATFS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_FATFS_FILES))))"},
    {"ZEPHYR_MODULES_FATFS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_FATFS_FILES))))"},
    {"ZEPHYR_MODULES_FATFS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_FATFS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_FATFS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_FATFS", ZEPHYR_MODULES_FATFS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_FATFS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_FATFS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_FATFS"
-doc_end
