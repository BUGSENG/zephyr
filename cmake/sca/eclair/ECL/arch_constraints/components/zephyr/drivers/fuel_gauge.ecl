-file_tag+={ZEPHYR_DRIVERS_FUEL_GAUGE_FILES, "^include/zephyr/drivers/fuel_gauge\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_FUEL_GAUGE_FILES, "^drivers/fuel_gauge/.*$"}
-file_tag+={ZEPHYR_DRIVERS_FUEL_GAUGE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/fuel_gauge.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_FUEL_GAUGE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_FUEL_GAUGE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FUEL_GAUGE_FILES))))"},
    {"ZEPHYR_DRIVERS_FUEL_GAUGE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_FUEL_GAUGE_FILES))))"},
    {"ZEPHYR_DRIVERS_FUEL_GAUGE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FUEL_GAUGE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_FUEL_GAUGE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_FUEL_GAUGE", ZEPHYR_DRIVERS_FUEL_GAUGE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_FUEL_GAUGE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_FUEL_GAUGE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_FUEL_GAUGE"
-doc_end
