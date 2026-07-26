-file_tag+={ZEPHYR_TOOLCHAIN_FILES, "^include/zephyr/toolchain\\.h$"}
-file_tag+={ZEPHYR_TOOLCHAIN_FILES, "^include/zephyr/toolchain/.*$"}

-doc_begin="The ZEPHYR_TOOLCHAIN component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_TOOLCHAIN", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_TOOLCHAIN_FILES))))"},
    {"ZEPHYR_TOOLCHAIN", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_TOOLCHAIN_FILES))))"},
    {"ZEPHYR_TOOLCHAIN", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_TOOLCHAIN_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_TOOLCHAIN component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_TOOLCHAIN", ZEPHYR_TOOLCHAIN_FILES}
-doc_end

-doc_begin="Show ZEPHYR_TOOLCHAIN component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_TOOLCHAIN"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_TOOLCHAIN"
-doc_end
