-file_tag+={ZEPHYR_SUBSYS_CRC_FILES, "^subsys/crc/.*$"}
-file_tag+={ZEPHYR_SUBSYS_CRC_FILES, "^include/zephyr/sys/crc\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_CRC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_CRC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CRC_FILES))))"},
    {"ZEPHYR_SUBSYS_CRC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_CRC_FILES))))"},
    {"ZEPHYR_SUBSYS_CRC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_CRC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_CRC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_CRC", ZEPHYR_SUBSYS_CRC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_CRC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_CRC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_CRC"
-doc_end
