-file_tag+={ZEPHYR_DRIVERS_SPI_FILES, "^zephyr/include/zephyr/drivers/spi.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SPI_FILES, "^zephyr/drivers/spi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SPI_FILES, "^zephyr/include/zephyr/drivers/spi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SPI_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/spi.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SPI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SPI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SPI_FILES))))"},
    {"ZEPHYR_DRIVERS_SPI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SPI_FILES))))"},
    {"ZEPHYR_DRIVERS_SPI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SPI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SPI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SPI", ZEPHYR_DRIVERS_SPI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SPI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SPI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SPI"
-doc_end
