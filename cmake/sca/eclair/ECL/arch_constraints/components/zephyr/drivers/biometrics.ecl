-file_tag+={ZEPHYR_DRIVERS_BIOMETRICS_FILES, "^zephyr/include/zephyr/drivers/biometrics\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_BIOMETRICS_FILES, "^zephyr/drivers/biometrics/.*$"}
-file_tag+={ZEPHYR_DRIVERS_BIOMETRICS_FILES, "^zephyr/include/zephyr/drivers/biometrics/.*$"}
-file_tag+={ZEPHYR_DRIVERS_BIOMETRICS_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/biometrics.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_BIOMETRICS component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_BIOMETRICS", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_BIOMETRICS_FILES))))"},
    {"ZEPHYR_DRIVERS_BIOMETRICS", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_BIOMETRICS_FILES))))"},
    {"ZEPHYR_DRIVERS_BIOMETRICS", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_BIOMETRICS_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_BIOMETRICS component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_BIOMETRICS", ZEPHYR_DRIVERS_BIOMETRICS_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_BIOMETRICS component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_BIOMETRICS"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_BIOMETRICS"
-doc_end
