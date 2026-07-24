-file_tag+={ZEPHYR_DRIVERS_MFD_FILES, "^zephyr/drivers/mfd/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MFD_FILES, "^zephyr/include/zephyr/drivers/mfd/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_MFD component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MFD", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MFD_FILES))))"},
    {"ZEPHYR_DRIVERS_MFD", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MFD_FILES))))"},
    {"ZEPHYR_DRIVERS_MFD", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MFD_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MFD component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MFD", ZEPHYR_DRIVERS_MFD_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MFD component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MFD"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MFD"
-doc_end
