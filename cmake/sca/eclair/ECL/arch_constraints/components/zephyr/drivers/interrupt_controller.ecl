-file_tag+={ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER_FILES, "^zephyr/drivers/interrupt_controller/.*$"}
-file_tag+={ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER_FILES, "^zephyr/include/zephyr/drivers/interrupt_controller/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER_FILES))))"},
    {"ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER_FILES))))"},
    {"ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER", ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_INTERRUPT_CONTROLLER"
-doc_end
