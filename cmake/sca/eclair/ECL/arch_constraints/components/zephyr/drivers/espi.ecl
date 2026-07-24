-file_tag+={ZEPHYR_DRIVERS_ESPI_FILES, "^zephyr/include/zephyr/drivers/espi.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_ESPI_FILES, "^zephyr/drivers/espi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_ESPI_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/espi.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_ESPI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_ESPI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ESPI_FILES))))"},
    {"ZEPHYR_DRIVERS_ESPI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_ESPI_FILES))))"},
    {"ZEPHYR_DRIVERS_ESPI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ESPI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_ESPI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_ESPI", ZEPHYR_DRIVERS_ESPI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_ESPI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_ESPI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_ESPI"
-doc_end
