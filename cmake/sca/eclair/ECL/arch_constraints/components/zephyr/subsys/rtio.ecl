-file_tag+={ZEPHYR_SUBSYS_RTIO_FILES, "^zephyr/subsys/rtio/.*$"}
-file_tag+={ZEPHYR_SUBSYS_RTIO_FILES, "^zephyr/include/zephyr/rtio/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_RTIO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_RTIO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_RTIO_FILES))))"},
    {"ZEPHYR_SUBSYS_RTIO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_RTIO_FILES))))"},
    {"ZEPHYR_SUBSYS_RTIO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_RTIO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_RTIO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_RTIO", ZEPHYR_SUBSYS_RTIO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_RTIO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_RTIO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_RTIO"
-doc_end
