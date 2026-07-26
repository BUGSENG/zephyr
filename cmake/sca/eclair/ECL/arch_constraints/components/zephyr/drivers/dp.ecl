-file_tag+={ZEPHYR_DRIVERS_DP_FILES, "^drivers/dp/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DP_FILES, "^include/zephyr/drivers/swdp\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_DP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_DP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DP_FILES))))"},
    {"ZEPHYR_DRIVERS_DP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_DP_FILES))))"},
    {"ZEPHYR_DRIVERS_DP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_DP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_DP", ZEPHYR_DRIVERS_DP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_DP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_DP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_DP"
-doc_end
