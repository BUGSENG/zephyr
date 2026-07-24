-file_tag+={ZEPHYR_DRIVERS_IPM_FILES, "^zephyr/include/zephyr/drivers/ipm\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_IPM_FILES, "^zephyr/drivers/ipm/.*$"}
-file_tag+={ZEPHYR_DRIVERS_IPM_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/ipm.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_IPM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_IPM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_IPM_FILES))))"},
    {"ZEPHYR_DRIVERS_IPM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_IPM_FILES))))"},
    {"ZEPHYR_DRIVERS_IPM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_IPM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_IPM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_IPM", ZEPHYR_DRIVERS_IPM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_IPM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_IPM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_IPM"
-doc_end
