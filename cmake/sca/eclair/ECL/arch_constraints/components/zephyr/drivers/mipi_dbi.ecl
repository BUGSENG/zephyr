-file_tag+={ZEPHYR_DRIVERS_MIPI_DBI_FILES, "^include/zephyr/drivers/mipi_dbi\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_MIPI_DBI_FILES, "^drivers/mipi_dbi/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_MIPI_DBI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MIPI_DBI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MIPI_DBI_FILES))))"},
    {"ZEPHYR_DRIVERS_MIPI_DBI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MIPI_DBI_FILES))))"},
    {"ZEPHYR_DRIVERS_MIPI_DBI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MIPI_DBI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MIPI_DBI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MIPI_DBI", ZEPHYR_DRIVERS_MIPI_DBI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MIPI_DBI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MIPI_DBI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MIPI_DBI"
-doc_end
