-file_tag+={ZEPHYR_SDK_FILES, "^.*/zephyr-sdk.*$"}

-doc_begin="The ZEPHYR_SDK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SDK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SDK_FILES))))"},
    {"ZEPHYR_SDK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SDK_FILES))))"},
    {"ZEPHYR_SDK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SDK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SDK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SDK", ZEPHYR_SDK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SDK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SDK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SDK"
-doc_end
