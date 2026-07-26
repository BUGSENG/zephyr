-file_tag+={ZEPHYR_DRIVERS_TEE_FILES, "^include/zephyr/drivers/tee\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_TEE_FILES, "^drivers/tee/.*$"}
-file_tag+={ZEPHYR_DRIVERS_TEE_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/tee.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_TEE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_TEE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_TEE_FILES))))"},
    {"ZEPHYR_DRIVERS_TEE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_TEE_FILES))))"},
    {"ZEPHYR_DRIVERS_TEE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_TEE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_TEE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_TEE", ZEPHYR_DRIVERS_TEE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_TEE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_TEE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_TEE"
-doc_end
