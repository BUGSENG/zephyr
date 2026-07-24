-file_tag+={ZEPHYR_DRIVERS_PINCTRL_FILES, "^zephyr/include/zephyr/drivers/pinctrl\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_PINCTRL_FILES, "^zephyr/drivers/pinctrl/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PINCTRL_FILES, "^zephyr/include/zephyr/drivers/pinctrl/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_PINCTRL component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PINCTRL", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PINCTRL_FILES))))"},
    {"ZEPHYR_DRIVERS_PINCTRL", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PINCTRL_FILES))))"},
    {"ZEPHYR_DRIVERS_PINCTRL", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PINCTRL_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PINCTRL component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PINCTRL", ZEPHYR_DRIVERS_PINCTRL_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PINCTRL component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PINCTRL"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PINCTRL"
-doc_end
