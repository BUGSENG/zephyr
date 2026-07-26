-file_tag+={ZEPHYR_CONFIG_FILES, "^.*/build/zephyr/include/generated/zephyr/autoconf\\.h$"}
-file_tag+={ZEPHYR_CONFIG_FILES, "^build/zephyr/misc/generated/configs\\.c$"}
-file_tag+={ZEPHYR_CONFIG_FILES, "^.*/build/zephyr/misc/generated/configs\\.c$"}

-doc_begin="The ZEPHYR_CONFIG component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_CONFIG", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_CONFIG_FILES))))"},
    {"ZEPHYR_CONFIG", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_CONFIG_FILES))))"},
    {"ZEPHYR_CONFIG", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_CONFIG_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_CONFIG component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_CONFIG", ZEPHYR_CONFIG_FILES}
-doc_end

-doc_begin="Show ZEPHYR_CONFIG component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_CONFIG"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_CONFIG"
-doc_end
