-file_tag+={ZEPHYR_MODULES_PERCEPIO_FILES, "^zephyr/modules/percepio/.*$"}

-doc_begin="The ZEPHYR_MODULES_PERCEPIO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_PERCEPIO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_PERCEPIO_FILES))))"},
    {"ZEPHYR_MODULES_PERCEPIO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_PERCEPIO_FILES))))"},
    {"ZEPHYR_MODULES_PERCEPIO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_PERCEPIO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_PERCEPIO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_PERCEPIO", ZEPHYR_MODULES_PERCEPIO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_PERCEPIO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_PERCEPIO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_PERCEPIO"
-doc_end
