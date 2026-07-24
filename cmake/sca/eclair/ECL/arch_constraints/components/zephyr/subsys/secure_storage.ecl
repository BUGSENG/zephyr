-file_tag+={ZEPHYR_SUBSYS_SECURE_STORAGE_FILES, "^zephyr/subsys/secure_storage/.*$"}
-file_tag+={ZEPHYR_SUBSYS_SECURE_STORAGE_FILES, "^.*/build/zephyr/include/generated/zephyr/secure_storage/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_SECURE_STORAGE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_SECURE_STORAGE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SECURE_STORAGE_FILES))))"},
    {"ZEPHYR_SUBSYS_SECURE_STORAGE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_SECURE_STORAGE_FILES))))"},
    {"ZEPHYR_SUBSYS_SECURE_STORAGE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SECURE_STORAGE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_SECURE_STORAGE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_SECURE_STORAGE", ZEPHYR_SUBSYS_SECURE_STORAGE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_SECURE_STORAGE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_SECURE_STORAGE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_SECURE_STORAGE"
-doc_end
