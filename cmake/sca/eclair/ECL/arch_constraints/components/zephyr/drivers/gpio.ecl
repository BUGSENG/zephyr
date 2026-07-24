-file_tag+={ZEPHYR_DRIVERS_GPIO_FILES, "^zephyr/include/zephyr/drivers/gpio\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_GPIO_FILES, "^zephyr/drivers/gpio/.*$"}
-file_tag+={ZEPHYR_DRIVERS_GPIO_FILES, "^zephyr/include/zephyr/drivers/gpio/.*$"}
-file_tag+={ZEPHYR_DRIVERS_GPIO_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/gpio.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_GPIO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_GPIO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_GPIO_FILES))))"},
    {"ZEPHYR_DRIVERS_GPIO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_GPIO_FILES))))"},
    {"ZEPHYR_DRIVERS_GPIO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_GPIO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_GPIO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_GPIO", ZEPHYR_DRIVERS_GPIO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_GPIO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_GPIO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_GPIO"
-doc_end
