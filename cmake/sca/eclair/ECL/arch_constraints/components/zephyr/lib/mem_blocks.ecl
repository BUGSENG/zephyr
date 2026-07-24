-file_tag+={ZEPHYR_LIB_MEM_BLOCKS_FILES, "^zephyr/lib/mem_blocks/.*$"}
-file_tag+={ZEPHYR_LIB_MEM_BLOCKS_FILES, "^zephyr/include/zephyr/sys/mem_blocks\\.h$"}

-doc_begin="The ZEPHYR_LIB_MEM_BLOCKS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_MEM_BLOCKS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_MEM_BLOCKS_FILES))))"},
    {"ZEPHYR_LIB_MEM_BLOCKS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_MEM_BLOCKS_FILES))))"},
    {"ZEPHYR_LIB_MEM_BLOCKS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_MEM_BLOCKS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_MEM_BLOCKS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_MEM_BLOCKS", ZEPHYR_LIB_MEM_BLOCKS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_MEM_BLOCKS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_MEM_BLOCKS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_MEM_BLOCKS"
-doc_end
