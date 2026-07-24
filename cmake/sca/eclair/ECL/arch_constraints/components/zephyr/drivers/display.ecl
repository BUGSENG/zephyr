-file_tag+={ZEPHYR_DRIVERS_DISPLAY_FILES, "^zephyr/include/zephyr/drivers/display\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_DISPLAY_FILES, "^zephyr/include/zephyr/drivers/mb_display\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_DISPLAY_FILES, "^zephyr/drivers/display/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_DISPLAY component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_DISPLAY", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DISPLAY_FILES))))"},
    {"ZEPHYR_DRIVERS_DISPLAY", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_DISPLAY_FILES))))"},
    {"ZEPHYR_DRIVERS_DISPLAY", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DISPLAY_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_DISPLAY component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_DISPLAY", ZEPHYR_DRIVERS_DISPLAY_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_DISPLAY component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_DISPLAY"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_DISPLAY"
-doc_end
