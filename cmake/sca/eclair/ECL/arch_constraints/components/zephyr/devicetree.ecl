-file_tag+={ZEPHYR_DEVICETREE_FILES, "^include/zephyr/devicetree\\.h$"}
-file_tag+={ZEPHYR_DEVICETREE_FILES, "^include/zephyr/devicetree/.*$"}
-file_tag+={ZEPHYR_DEVICETREE_FILES, "^include/zephyr/dt-bindings/.*$"}
-file_tag+={ZEPHYR_DEVICETREE_FILES, "^.*/build/zephyr/include/generated/zephyr/devicetree_generated\\.h$"}

-doc_begin="The ZEPHYR_DEVICETREE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DEVICETREE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DEVICETREE_FILES))))"},
    {"ZEPHYR_DEVICETREE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DEVICETREE_FILES))))"},
    {"ZEPHYR_DEVICETREE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DEVICETREE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DEVICETREE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DEVICETREE", ZEPHYR_DEVICETREE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DEVICETREE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DEVICETREE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DEVICETREE"
-doc_end
