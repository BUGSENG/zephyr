-file_tag+={ZEPHYR_DRIVERS_REGULATOR_FILES, "^zephyr/include/zephyr/drivers/regulator\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_REGULATOR_FILES, "^zephyr/drivers/regulator/.*$"}
-file_tag+={ZEPHYR_DRIVERS_REGULATOR_FILES, "^zephyr/include/zephyr/drivers/regulator/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_REGULATOR component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_REGULATOR", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_REGULATOR_FILES))))"},
    {"ZEPHYR_DRIVERS_REGULATOR", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_REGULATOR_FILES))))"},
    {"ZEPHYR_DRIVERS_REGULATOR", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_REGULATOR_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_REGULATOR component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_REGULATOR", ZEPHYR_DRIVERS_REGULATOR_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_REGULATOR component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_REGULATOR"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_REGULATOR"
-doc_end
