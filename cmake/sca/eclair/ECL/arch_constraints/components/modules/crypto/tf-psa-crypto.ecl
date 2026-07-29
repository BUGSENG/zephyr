-file_tag+={MODULES_CRYPTO_TF_PSA_CRYPTO_FILES, "^.*/modules/crypto/tf-psa-crypto/.*$"}

-doc_begin="The MODULES_CRYPTO_TF_PSA_CRYPTO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_CRYPTO_TF_PSA_CRYPTO", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_CRYPTO_TF_PSA_CRYPTO_FILES))))"},
    {"MODULES_CRYPTO_TF_PSA_CRYPTO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_CRYPTO_TF_PSA_CRYPTO_FILES))))"},
    {"MODULES_CRYPTO_TF_PSA_CRYPTO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_CRYPTO_TF_PSA_CRYPTO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_CRYPTO_TF_PSA_CRYPTO component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_CRYPTO_TF_PSA_CRYPTO", MODULES_CRYPTO_TF_PSA_CRYPTO_FILES}
-doc_end

-doc_begin="Show MODULES_CRYPTO_TF_PSA_CRYPTO component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_CRYPTO_TF_PSA_CRYPTO"
-config=B.INDEPENDENCE,show_component_files+="MODULES_CRYPTO_TF_PSA_CRYPTO"
-doc_end
