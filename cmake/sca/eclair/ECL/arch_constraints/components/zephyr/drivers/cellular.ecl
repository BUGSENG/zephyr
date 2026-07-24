-file_tag+={ZEPHYR_DRIVERS_CELLULAR_FILES, "^zephyr/include/zephyr/drivers/cellular\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_CELLULAR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CELLULAR", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CELLULAR_FILES))))"},
    {"ZEPHYR_DRIVERS_CELLULAR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CELLULAR_FILES))))"},
    {"ZEPHYR_DRIVERS_CELLULAR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CELLULAR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CELLULAR component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CELLULAR", ZEPHYR_DRIVERS_CELLULAR_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CELLULAR component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CELLULAR"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CELLULAR"
-doc_end
