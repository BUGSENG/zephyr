-file_tag+={ZEPHYR_DRIVERS_MSPI_FILES, "^include/zephyr/drivers/mspi.*\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_MSPI_FILES, "^drivers/mspi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MSPI_FILES, "^include/zephyr/drivers/mspi/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MSPI_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/mspi.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_MSPI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MSPI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MSPI_FILES))))"},
    {"ZEPHYR_DRIVERS_MSPI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MSPI_FILES))))"},
    {"ZEPHYR_DRIVERS_MSPI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MSPI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MSPI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MSPI", ZEPHYR_DRIVERS_MSPI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MSPI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MSPI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MSPI"
-doc_end
