eval_file_glob(join_paths(ecls_dir,"components/zephyr/subsys/portability/*.ecl"))

-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_GENERIC_FILES, "^zephyr/subsys/portability/.*$"}
-file_tag+={ZEPHYR_SUBSYS_PORTABILITY_GENERIC_FILES, "^zephyr/include/zephyr/portability/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_PORTABILITY_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_PORTABILITY_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_GENERIC_FILES))))"},
    {"ZEPHYR_SUBSYS_PORTABILITY_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_GENERIC_FILES))))"},
    {"ZEPHYR_SUBSYS_PORTABILITY_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_PORTABILITY_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_PORTABILITY_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_PORTABILITY_GENERIC", ZEPHYR_SUBSYS_PORTABILITY_GENERIC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_PORTABILITY_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_PORTABILITY_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_PORTABILITY_GENERIC"
-doc_end
