eval_file_glob(join_paths(ecls_dir,"components/modules/crypto/*.ecl"))

-file_tag+={MODULES_CRYPTO_GENERIC_FILES, "^modules/crypto/.*$"}

-doc_begin="The MODULES_CRYPTO_GENERIC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_CRYPTO_GENERIC", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_CRYPTO_GENERIC_FILES))))"},
    {"MODULES_CRYPTO_GENERIC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_CRYPTO_GENERIC_FILES))))"},
    {"MODULES_CRYPTO_GENERIC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_CRYPTO_GENERIC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_CRYPTO_GENERIC component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_CRYPTO_GENERIC", MODULES_CRYPTO_GENERIC_FILES}
-doc_end

-doc_begin="Show MODULES_CRYPTO_GENERIC component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_CRYPTO_GENERIC"
-config=B.INDEPENDENCE,show_component_files+="MODULES_CRYPTO_GENERIC"
-doc_end
