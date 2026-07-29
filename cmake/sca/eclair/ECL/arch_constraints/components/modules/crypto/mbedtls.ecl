-file_tag+={MODULES_CRYPTO_MBEDTLS_FILES, "^.*/modules/crypto/mbedtls/.*$"}

-doc_begin="The MODULES_CRYPTO_MBEDTLS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_CRYPTO_MBEDTLS", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_CRYPTO_MBEDTLS_FILES))))"},
    {"MODULES_CRYPTO_MBEDTLS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_CRYPTO_MBEDTLS_FILES))))"},
    {"MODULES_CRYPTO_MBEDTLS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_CRYPTO_MBEDTLS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_CRYPTO_MBEDTLS component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_CRYPTO_MBEDTLS", MODULES_CRYPTO_MBEDTLS_FILES}
-doc_end

-doc_begin="Show MODULES_CRYPTO_MBEDTLS component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_CRYPTO_MBEDTLS"
-config=B.INDEPENDENCE,show_component_files+="MODULES_CRYPTO_MBEDTLS"
-doc_end
