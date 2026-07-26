-file_tag+={ZEPHYR_SUBSYS_DEMAND_PAGING_FILES, "^subsys/demand_paging/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_DEMAND_PAGING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_DEMAND_PAGING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DEMAND_PAGING_FILES))))"},
    {"ZEPHYR_SUBSYS_DEMAND_PAGING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_DEMAND_PAGING_FILES))))"},
    {"ZEPHYR_SUBSYS_DEMAND_PAGING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_DEMAND_PAGING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_DEMAND_PAGING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_DEMAND_PAGING", ZEPHYR_SUBSYS_DEMAND_PAGING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_DEMAND_PAGING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_DEMAND_PAGING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_DEMAND_PAGING"
-doc_end
