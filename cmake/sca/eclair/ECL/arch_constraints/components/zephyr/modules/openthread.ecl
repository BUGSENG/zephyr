-file_tag+={ZEPHYR_MODULES_OPENTHREAD_FILES, "^zephyr/modules/openthread/.*$"}

-doc_begin="The ZEPHYR_MODULES_OPENTHREAD component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_OPENTHREAD", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_OPENTHREAD_FILES))))"},
    {"ZEPHYR_MODULES_OPENTHREAD", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_OPENTHREAD_FILES))))"},
    {"ZEPHYR_MODULES_OPENTHREAD", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_OPENTHREAD_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_OPENTHREAD component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_OPENTHREAD", ZEPHYR_MODULES_OPENTHREAD_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_OPENTHREAD component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_OPENTHREAD"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_OPENTHREAD"
-doc_end
