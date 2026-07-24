-file_tag+={ZEPHYR_DRIVERS_SDHC_FILES, "^zephyr/include/zephyr/drivers/sdhc\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_SDHC_FILES, "^zephyr/drivers/sdhc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_SDHC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/sdhc.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_SDHC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_SDHC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SDHC_FILES))))"},
    {"ZEPHYR_DRIVERS_SDHC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_SDHC_FILES))))"},
    {"ZEPHYR_DRIVERS_SDHC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_SDHC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_SDHC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_SDHC", ZEPHYR_DRIVERS_SDHC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_SDHC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_SDHC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_SDHC"
-doc_end
