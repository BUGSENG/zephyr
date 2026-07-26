-file_tag+={ZEPHYR_LINKER_FILES, "^include/zephyr/linker/.*$"}

-doc_begin="The ZEPHYR_LINKER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LINKER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LINKER_FILES))))"},
    {"ZEPHYR_LINKER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LINKER_FILES))))"},
    {"ZEPHYR_LINKER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LINKER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LINKER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LINKER", ZEPHYR_LINKER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LINKER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LINKER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LINKER"
-doc_end
