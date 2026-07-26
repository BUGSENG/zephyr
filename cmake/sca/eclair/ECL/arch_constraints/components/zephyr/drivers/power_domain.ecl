-file_tag+={ZEPHYR_DRIVERS_POWER_DOMAIN_FILES, "^drivers/power_domain/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_POWER_DOMAIN component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_POWER_DOMAIN", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_POWER_DOMAIN_FILES))))"},
    {"ZEPHYR_DRIVERS_POWER_DOMAIN", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_POWER_DOMAIN_FILES))))"},
    {"ZEPHYR_DRIVERS_POWER_DOMAIN", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_POWER_DOMAIN_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_POWER_DOMAIN component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_POWER_DOMAIN", ZEPHYR_DRIVERS_POWER_DOMAIN_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_POWER_DOMAIN component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_POWER_DOMAIN"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_POWER_DOMAIN"
-doc_end
