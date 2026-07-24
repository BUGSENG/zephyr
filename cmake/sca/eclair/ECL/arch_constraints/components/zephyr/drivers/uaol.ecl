-file_tag+={ZEPHYR_DRIVERS_UAOL_FILES, "^zephyr/drivers/uaol/.*$"}
-file_tag+={ZEPHYR_DRIVERS_UAOL_FILES, "^zephyr/include/zephyr/drivers/uaol\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_UAOL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_UAOL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_UAOL_FILES))))"},
    {"ZEPHYR_DRIVERS_UAOL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_UAOL_FILES))))"},
    {"ZEPHYR_DRIVERS_UAOL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_UAOL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_UAOL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_UAOL", ZEPHYR_DRIVERS_UAOL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_UAOL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_UAOL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_UAOL"
-doc_end
