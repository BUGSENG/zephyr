-file_tag+={ZEPHYR_DRIVERS_MEMC_FILES, "^drivers/memc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_MEMC_FILES, "^include/zephyr/drivers/memc/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_MEMC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_MEMC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MEMC_FILES))))"},
    {"ZEPHYR_DRIVERS_MEMC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_MEMC_FILES))))"},
    {"ZEPHYR_DRIVERS_MEMC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_MEMC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_MEMC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_MEMC", ZEPHYR_DRIVERS_MEMC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_MEMC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_MEMC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_MEMC"
-doc_end
