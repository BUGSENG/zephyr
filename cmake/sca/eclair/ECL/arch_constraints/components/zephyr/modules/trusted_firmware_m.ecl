-file_tag+={ZEPHYR_MODULES_TRUSTED_FIRMWARE_M_FILES, "^.*/modules/trusted-firmware-m/.*$"}

-doc_begin="The ZEPHYR_MODULES_TRUSTED_FIRMWARE_M component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_M", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_TRUSTED_FIRMWARE_M_FILES))))"},
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_M", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_TRUSTED_FIRMWARE_M_FILES))))"},
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_M", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_TRUSTED_FIRMWARE_M_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_TRUSTED_FIRMWARE_M component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_TRUSTED_FIRMWARE_M", ZEPHYR_MODULES_TRUSTED_FIRMWARE_M_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_TRUSTED_FIRMWARE_M component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_TRUSTED_FIRMWARE_M"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_TRUSTED_FIRMWARE_M"
-doc_end
