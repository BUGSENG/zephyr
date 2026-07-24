-file_tag+={ZEPHYR_MODULES_LITTLEFS_FILES, "^zephyr/modules/littlefs/.*$"}

-doc_begin="The ZEPHYR_MODULES_LITTLEFS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_LITTLEFS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_LITTLEFS_FILES))))"},
    {"ZEPHYR_MODULES_LITTLEFS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_LITTLEFS_FILES))))"},
    {"ZEPHYR_MODULES_LITTLEFS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_LITTLEFS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_LITTLEFS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_LITTLEFS", ZEPHYR_MODULES_LITTLEFS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_LITTLEFS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_LITTLEFS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_LITTLEFS"
-doc_end
