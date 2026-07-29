-file_tag+={ZEPHYR_MODULES_ACPICA_FILES, "^.*/modules/acpica/.*$"}

-doc_begin="The ZEPHYR_MODULES_ACPICA component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_ACPICA", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_ACPICA_FILES))))"},
    {"ZEPHYR_MODULES_ACPICA", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_ACPICA_FILES))))"},
    {"ZEPHYR_MODULES_ACPICA", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_ACPICA_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_ACPICA component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_ACPICA", ZEPHYR_MODULES_ACPICA_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_ACPICA component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_ACPICA"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_ACPICA"
-doc_end
