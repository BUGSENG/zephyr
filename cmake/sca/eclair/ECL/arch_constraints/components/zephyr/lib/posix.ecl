-file_tag+={ZEPHYR_LIB_POSIX_FILES, "^zephyr/lib/posix/.*$"}
-file_tag+={ZEPHYR_LIB_POSIX_FILES, "^zephyr/include/zephyr/posix/.*$"}
-file_tag+={ZEPHYR_LIB_POSIX_FILES, "^.*/build/zephyr/include/generated/posix/.*$"}

-doc_begin="The ZEPHYR_LIB_POSIX component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_POSIX", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_POSIX_FILES))))"},
    {"ZEPHYR_LIB_POSIX", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_POSIX_FILES))))"},
    {"ZEPHYR_LIB_POSIX", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_POSIX_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_POSIX component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_POSIX", ZEPHYR_LIB_POSIX_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_POSIX component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_POSIX"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_POSIX"
-doc_end
