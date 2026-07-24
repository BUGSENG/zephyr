-file_tag+={ZEPHYR_DRIVERS_VIDEO_FILES, "^zephyr/include/zephyr/drivers/video.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_VIDEO_FILES, "^zephyr/drivers/video/.*$"}
-file_tag+={ZEPHYR_DRIVERS_VIDEO_FILES, "^zephyr/include/zephyr/video.*$"}
-file_tag+={ZEPHYR_DRIVERS_VIDEO_FILES, "^zephyr/include/zephyr/drivers/video/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_VIDEO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_VIDEO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_VIDEO_FILES))))"},
    {"ZEPHYR_DRIVERS_VIDEO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_VIDEO_FILES))))"},
    {"ZEPHYR_DRIVERS_VIDEO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_VIDEO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_VIDEO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_VIDEO", ZEPHYR_DRIVERS_VIDEO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_VIDEO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_VIDEO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_VIDEO"
-doc_end
