-file_tag+={ZEPHYR_DRIVERS_MIPI_DSI_FILES, "^include/zephyr/drivers/mipi_dsi\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_MIPI_DSI_FILES, "^drivers/mipi_dsi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MIPI_DSI_FILES, "^include/zephyr/drivers/mipi_dsi/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_MIPI_DSI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MIPI_DSI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MIPI_DSI_FILES))))"},
    {"ZEPHYR_DRIVERS_MIPI_DSI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MIPI_DSI_FILES))))"},
    {"ZEPHYR_DRIVERS_MIPI_DSI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MIPI_DSI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MIPI_DSI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MIPI_DSI", ZEPHYR_DRIVERS_MIPI_DSI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MIPI_DSI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MIPI_DSI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MIPI_DSI"
-doc_end
