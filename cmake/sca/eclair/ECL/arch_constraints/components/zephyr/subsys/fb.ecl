-file_tag+={ZEPHYR_SUBSYS_FB_FILES, "^zephyr/subsys/fb/.*$"}
-file_tag+={ZEPHYR_SUBSYS_FB_FILES, "^zephyr/include/zephyr/display/cfb\\.h$"}

-doc_begin="The ZEPHYR_SUBSYS_FB component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_FB", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_FB_FILES))))"},
    {"ZEPHYR_SUBSYS_FB", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_FB_FILES))))"},
    {"ZEPHYR_SUBSYS_FB", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_FB_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_FB component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_FB", ZEPHYR_SUBSYS_FB_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_FB component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_FB"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_FB"
-doc_end
