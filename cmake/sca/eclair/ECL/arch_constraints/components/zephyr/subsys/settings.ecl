-file_tag+={ZEPHYR_SUBSYS_SETTINGS_FILES, "^zephyr/subsys/settings/.*$"}
-file_tag+={ZEPHYR_SUBSYS_SETTINGS_FILES, "^zephyr/include/zephyr/settings/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_SETTINGS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_SETTINGS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SETTINGS_FILES))))"},
    {"ZEPHYR_SUBSYS_SETTINGS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_SETTINGS_FILES))))"},
    {"ZEPHYR_SUBSYS_SETTINGS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_SETTINGS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_SETTINGS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_SETTINGS", ZEPHYR_SUBSYS_SETTINGS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_SETTINGS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_SETTINGS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_SETTINGS"
-doc_end
