-file_tag+={ZEPHYR_DRIVERS_IEEE802154_FILES, "^drivers/ieee802154/.*$"}
-file_tag+={ZEPHYR_DRIVERS_IEEE802154_FILES, "^include/zephyr/drivers/ieee802154/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_IEEE802154 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_IEEE802154", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_IEEE802154_FILES))))"},
    {"ZEPHYR_DRIVERS_IEEE802154", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_IEEE802154_FILES))))"},
    {"ZEPHYR_DRIVERS_IEEE802154", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_IEEE802154_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_IEEE802154 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_IEEE802154", ZEPHYR_DRIVERS_IEEE802154_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_IEEE802154 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_IEEE802154"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_IEEE802154"
-doc_end
