-file_tag+={ZEPHYR_MODULES_TRUSTED_FIRMWARE_A_FILES, "^modules/trusted-firmware-a/.*$"}

-doc_begin="The ZEPHYR_MODULES_TRUSTED_FIRMWARE_A component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_A", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_TRUSTED_FIRMWARE_A_FILES))))"},
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_A", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_TRUSTED_FIRMWARE_A_FILES))))"},
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_A", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_TRUSTED_FIRMWARE_A_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_TRUSTED_FIRMWARE_A component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_A", ZEPHYR_MODULES_TRUSTED_FIRMWARE_A_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_TRUSTED_FIRMWARE_A component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_TRUSTED_FIRMWARE_A"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_TRUSTED_FIRMWARE_A"
-doc_end
