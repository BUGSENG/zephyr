eval_file_glob(join_paths(ecls_dir,"components/zephyr/drivers/*.ecl"))

-file_tag+={ZEPHYR_DRIVERS_GENERIC_FILES, "^include/zephyr/drivers/.*$"}
-file_tag+={ZEPHYR_DRIVERS_GENERIC_FILES, "^drivers/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_GENERIC_FILES))))"},
    {"ZEPHYR_DRIVERS_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_GENERIC_FILES))))"},
    {"ZEPHYR_DRIVERS_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_GENERIC", ZEPHYR_DRIVERS_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_GENERIC"
-doc_end
