-file_tag+={ZEPHYR_DRIVERS_ETHERNET_FILES, "^drivers/ethernet/.*$"}
-file_tag+={ZEPHYR_DRIVERS_ETHERNET_FILES, "^include/zephyr/drivers/ethernet/.*$"}
-file_tag+={ZEPHYR_DRIVERS_ETHERNET_FILES, "^include/zephyr/drivers/mdio\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_ETHERNET_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/mdio\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_ETHERNET component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_ETHERNET", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ETHERNET_FILES))))"},
    {"ZEPHYR_DRIVERS_ETHERNET", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_ETHERNET_FILES))))"},
    {"ZEPHYR_DRIVERS_ETHERNET", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_ETHERNET_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_ETHERNET component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_ETHERNET", ZEPHYR_DRIVERS_ETHERNET_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_ETHERNET component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_ETHERNET"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_ETHERNET"
-doc_end
