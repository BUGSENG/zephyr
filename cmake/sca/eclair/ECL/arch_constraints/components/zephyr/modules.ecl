eval_file_glob(join_paths(ecls_dir,"components/zephyr/modules/*.ecl"))

-file_tag+={ZEPHYR_MODULES_GENERIC_FILES, "^modules/.*$"}

-doc_begin="The ZEPHYR_MODULES_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_GENERIC_FILES))))"},
    {"ZEPHYR_MODULES_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_GENERIC_FILES))))"},
    {"ZEPHYR_MODULES_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_GENERIC", ZEPHYR_MODULES_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_GENERIC"
-doc_end
