-file_tag+={ZEPHYR_DRIVERS_EDAC_FILES, "^include/zephyr/drivers/edac\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_EDAC_FILES, "^drivers/edac/.*$"}
-file_tag+={ZEPHYR_DRIVERS_EDAC_FILES, "^include/zephyr/drivers/edac/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_EDAC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_EDAC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_EDAC_FILES))))"},
    {"ZEPHYR_DRIVERS_EDAC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_EDAC_FILES))))"},
    {"ZEPHYR_DRIVERS_EDAC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_EDAC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_EDAC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_EDAC", ZEPHYR_DRIVERS_EDAC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_EDAC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_EDAC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_EDAC"
-doc_end
