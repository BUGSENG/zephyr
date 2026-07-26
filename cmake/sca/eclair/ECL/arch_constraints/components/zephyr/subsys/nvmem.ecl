-file_tag+={ZEPHYR_SUBSYS_NVMEM_FILES, "^subsys/nvmem/.*$"}
-file_tag+={ZEPHYR_SUBSYS_NVMEM_FILES, "^include/zephyr/nvmem\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_NVMEM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_NVMEM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_NVMEM_FILES))))"},
    {"ZEPHYR_SUBSYS_NVMEM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_NVMEM_FILES))))"},
    {"ZEPHYR_SUBSYS_NVMEM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_NVMEM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_NVMEM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_NVMEM", ZEPHYR_SUBSYS_NVMEM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_NVMEM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_NVMEM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_NVMEM"
-doc_end
