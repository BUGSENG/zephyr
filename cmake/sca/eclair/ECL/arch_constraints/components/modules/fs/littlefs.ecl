-file_tag+={MODULES_FS_LITTLEFS_FILES, "^.*/modules/fs/littlefs/.*$"}

-doc_begin="The MODULES_FS_LITTLEFS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_FS_LITTLEFS", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_FS_LITTLEFS_FILES))))"},
    {"MODULES_FS_LITTLEFS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_FS_LITTLEFS_FILES))))"},
    {"MODULES_FS_LITTLEFS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_FS_LITTLEFS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_FS_LITTLEFS component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_FS_LITTLEFS", MODULES_FS_LITTLEFS_FILES}
-doc_end

-doc_begin="Show MODULES_FS_LITTLEFS component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_FS_LITTLEFS"
-config=B.INDEPENDENCE,show_component_files+="MODULES_FS_LITTLEFS"
-doc_end
