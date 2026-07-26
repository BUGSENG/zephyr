-file_tag+={ZEPHYR_PLATFORM_FILES, "^boards/.*$"}
-file_tag+={ZEPHYR_PLATFORM_FILES, "^soc/.*$"}
-file_tag+={ZEPHYR_PLATFORM_FILES, "^include/zephyr/platform/.*$"}

-doc_begin="The ZEPHYR_PLATFORM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_PLATFORM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_PLATFORM_FILES))))"},
    {"ZEPHYR_PLATFORM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_PLATFORM_FILES))))"},
    {"ZEPHYR_PLATFORM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_PLATFORM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_PLATFORM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_PLATFORM", ZEPHYR_PLATFORM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_PLATFORM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_PLATFORM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_PLATFORM"
-doc_end
