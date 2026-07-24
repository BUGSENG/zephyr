-file_tag+={ZEPHYR_MODULES_LIBSBC_FILES, "^zephyr/modules/libsbc/.*$"}

-doc_begin="The ZEPHYR_MODULES_LIBSBC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_LIBSBC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_LIBSBC_FILES))))"},
    {"ZEPHYR_MODULES_LIBSBC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_LIBSBC_FILES))))"},
    {"ZEPHYR_MODULES_LIBSBC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_LIBSBC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_LIBSBC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_LIBSBC", ZEPHYR_MODULES_LIBSBC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_LIBSBC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_LIBSBC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_LIBSBC"
-doc_end
