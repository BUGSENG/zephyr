-file_tag+={ZEPHYR_MODULES_MBEDTLS_FILES, "^zephyr/modules/mbedtls/.*$"}

-doc_begin="The ZEPHYR_MODULES_MBEDTLS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_MBEDTLS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_MBEDTLS_FILES))))"},
    {"ZEPHYR_MODULES_MBEDTLS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_MBEDTLS_FILES))))"},
    {"ZEPHYR_MODULES_MBEDTLS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_MBEDTLS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_MBEDTLS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_MBEDTLS", ZEPHYR_MODULES_MBEDTLS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_MBEDTLS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_MBEDTLS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_MBEDTLS"
-doc_end
