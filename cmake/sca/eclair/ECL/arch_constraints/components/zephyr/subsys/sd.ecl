-file_tag+={ZEPHYR_SUBSYS_SD_FILES, "^subsys/sd/.*$"}
-file_tag+={ZEPHYR_SUBSYS_SD_FILES, "^include/zephyr/sd/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_SD component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_SD", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SD_FILES))))"},
    {"ZEPHYR_SUBSYS_SD", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_SD_FILES))))"},
    {"ZEPHYR_SUBSYS_SD", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SD_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_SD component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_SD", ZEPHYR_SUBSYS_SD_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_SD component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_SD"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_SD"
-doc_end
