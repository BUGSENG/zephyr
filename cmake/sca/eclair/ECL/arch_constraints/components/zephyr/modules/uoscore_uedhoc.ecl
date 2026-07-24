-file_tag+={ZEPHYR_MODULES_UOSCORE_UEDHOC_FILES, "^zephyr/modules/uoscore-uedhoc/.*$"}

-doc_begin="The ZEPHYR_MODULES_UOSCORE_UEDHOC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_UOSCORE_UEDHOC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_UOSCORE_UEDHOC_FILES))))"},
    {"ZEPHYR_MODULES_UOSCORE_UEDHOC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_UOSCORE_UEDHOC_FILES))))"},
    {"ZEPHYR_MODULES_UOSCORE_UEDHOC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_UOSCORE_UEDHOC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_UOSCORE_UEDHOC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_UOSCORE_UEDHOC", ZEPHYR_MODULES_UOSCORE_UEDHOC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_UOSCORE_UEDHOC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_UOSCORE_UEDHOC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_UOSCORE_UEDHOC"
-doc_end
