-file_tag+={ZEPHYR_MODULES_LVGL_FILES, "^modules/lvgl/.*$"}

-doc_begin="The ZEPHYR_MODULES_LVGL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_LVGL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_LVGL_FILES))))"},
    {"ZEPHYR_MODULES_LVGL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_LVGL_FILES))))"},
    {"ZEPHYR_MODULES_LVGL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_LVGL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_LVGL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_LVGL", ZEPHYR_MODULES_LVGL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_LVGL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_LVGL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_LVGL"
-doc_end
