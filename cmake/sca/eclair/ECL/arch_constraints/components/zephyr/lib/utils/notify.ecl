-file_tag+={ZEPHYR_LIB_UTILS_NOTIFY_FILES, "^include/zephyr/sys/notify\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_NOTIFY_FILES, "^lib/utils/notify\\.c$"}

-doc_begin="The ZEPHYR_LIB_UTILS_NOTIFY component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_NOTIFY", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_NOTIFY_FILES))))"},
    {"ZEPHYR_LIB_UTILS_NOTIFY", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_NOTIFY_FILES))))"},
    {"ZEPHYR_LIB_UTILS_NOTIFY", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_NOTIFY_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_NOTIFY component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_NOTIFY", ZEPHYR_LIB_UTILS_NOTIFY_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_NOTIFY component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_NOTIFY"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_NOTIFY"
-doc_end
