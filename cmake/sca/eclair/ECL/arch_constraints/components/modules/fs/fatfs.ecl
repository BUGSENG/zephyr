-file_tag+={MODULES_FS_FATFS_FILES, "^modules/fs/fatfs/.*$"}

-doc_begin="The MODULES_FS_FATFS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_FS_FATFS", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_FS_FATFS_FILES))))"},
    {"MODULES_FS_FATFS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_FS_FATFS_FILES))))"},
    {"MODULES_FS_FATFS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_FS_FATFS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_FS_FATFS component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_FS_FATFS", MODULES_FS_FATFS_FILES}
-doc_end

-doc_begin="Show MODULES_FS_FATFS component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_FS_FATFS"
-config=B.INDEPENDENCE,show_component_files+="MODULES_FS_FATFS"
-doc_end
