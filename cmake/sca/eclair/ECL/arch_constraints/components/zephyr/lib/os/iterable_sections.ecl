-file_tag+={ZEPHYR_LIB_OS_ITERABLE_SECTIONS_FILES, "^zephyr/include/zephyr/sys/iterable_sections\\.h$"}

-doc_begin="The ZEPHYR_LIB_OS_ITERABLE_SECTIONS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_OS_ITERABLE_SECTIONS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_OS_ITERABLE_SECTIONS_FILES))))"},
    {"ZEPHYR_LIB_OS_ITERABLE_SECTIONS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_OS_ITERABLE_SECTIONS_FILES))))"},
    {"ZEPHYR_LIB_OS_ITERABLE_SECTIONS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_OS_ITERABLE_SECTIONS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_OS_ITERABLE_SECTIONS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_OS_ITERABLE_SECTIONS", ZEPHYR_LIB_OS_ITERABLE_SECTIONS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_OS_ITERABLE_SECTIONS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_OS_ITERABLE_SECTIONS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_OS_ITERABLE_SECTIONS"
-doc_end
