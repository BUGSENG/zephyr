-file_tag+={ZEPHYR_DRIVERS_CRYPTO_FILES, "^drivers/crypto/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CRYPTO_FILES, "^include/zephyr/crypto/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_CRYPTO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CRYPTO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CRYPTO_FILES))))"},
    {"ZEPHYR_DRIVERS_CRYPTO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CRYPTO_FILES))))"},
    {"ZEPHYR_DRIVERS_CRYPTO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CRYPTO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CRYPTO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CRYPTO", ZEPHYR_DRIVERS_CRYPTO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CRYPTO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CRYPTO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CRYPTO"
-doc_end
