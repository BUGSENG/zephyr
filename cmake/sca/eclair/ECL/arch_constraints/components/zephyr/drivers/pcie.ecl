-file_tag+={ZEPHYR_DRIVERS_PCIE_FILES, "^zephyr/drivers/pcie/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PCIE_FILES, "^zephyr/include/zephyr/drivers/pcie/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_PCIE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PCIE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PCIE_FILES))))"},
    {"ZEPHYR_DRIVERS_PCIE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PCIE_FILES))))"},
    {"ZEPHYR_DRIVERS_PCIE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PCIE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PCIE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PCIE", ZEPHYR_DRIVERS_PCIE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PCIE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PCIE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PCIE"
-doc_end
