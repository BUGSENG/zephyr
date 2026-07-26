-file_tag+={ZEPHYR_DRIVERS_WUC_FILES, "^drivers/wuc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_WUC_FILES, "^include/zephyr/drivers/wuc\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_WUC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_WUC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_WUC_FILES))))"},
    {"ZEPHYR_DRIVERS_WUC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_WUC_FILES))))"},
    {"ZEPHYR_DRIVERS_WUC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_WUC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_WUC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_WUC", ZEPHYR_DRIVERS_WUC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_WUC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_WUC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_WUC"
-doc_end
