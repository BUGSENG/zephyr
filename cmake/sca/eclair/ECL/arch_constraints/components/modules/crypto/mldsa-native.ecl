-file_tag+={MODULES_CRYPTO_MLDSA_NATIVE_FILES, "^modules/crypto/mldsa-native/.*$"}

-doc_begin="The MODULES_CRYPTO_MLDSA_NATIVE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_CRYPTO_MLDSA_NATIVE", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_CRYPTO_MLDSA_NATIVE_FILES))))"},
    {"MODULES_CRYPTO_MLDSA_NATIVE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_CRYPTO_MLDSA_NATIVE_FILES))))"},
    {"MODULES_CRYPTO_MLDSA_NATIVE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_CRYPTO_MLDSA_NATIVE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_CRYPTO_MLDSA_NATIVE component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_CRYPTO_MLDSA_NATIVE", MODULES_CRYPTO_MLDSA_NATIVE_FILES}
-doc_end

-doc_begin="Show MODULES_CRYPTO_MLDSA_NATIVE component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_CRYPTO_MLDSA_NATIVE"
-config=B.INDEPENDENCE,show_component_files+="MODULES_CRYPTO_MLDSA_NATIVE"
-doc_end
