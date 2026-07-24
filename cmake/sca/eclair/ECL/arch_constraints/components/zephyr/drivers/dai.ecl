-file_tag+={ZEPHYR_DRIVERS_DAI_FILES, "^zephyr/include/zephyr/drivers/dai\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_DAI_FILES, "^zephyr/drivers/dai/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DAI_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/dai.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_DAI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_DAI", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DAI_FILES))))"},
    {"ZEPHYR_DRIVERS_DAI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_DAI_FILES))))"},
    {"ZEPHYR_DRIVERS_DAI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DAI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_DAI component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_DAI", ZEPHYR_DRIVERS_DAI_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_DAI component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_DAI"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_DAI"
-doc_end
