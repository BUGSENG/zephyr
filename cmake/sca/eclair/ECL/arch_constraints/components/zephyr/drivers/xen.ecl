-file_tag+={ZEPHYR_DRIVERS_XEN_FILES, "^drivers/xen/.*$"}
-file_tag+={ZEPHYR_DRIVERS_XEN_FILES, "^include/zephyr/xen/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_XEN component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_XEN", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_XEN_FILES))))"},
    {"ZEPHYR_DRIVERS_XEN", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_XEN_FILES))))"},
    {"ZEPHYR_DRIVERS_XEN", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_XEN_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_XEN component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_XEN", ZEPHYR_DRIVERS_XEN_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_XEN component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_XEN"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_XEN"
-doc_end
