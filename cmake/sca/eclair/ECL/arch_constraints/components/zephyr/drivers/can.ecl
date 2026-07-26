-file_tag+={ZEPHYR_DRIVERS_CAN_FILES, "^include/zephyr/drivers/can\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_CAN_FILES, "^drivers/can/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CAN_FILES, "^include/zephyr/drivers/can/.*$"}
-file_tag+={ZEPHYR_DRIVERS_CAN_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/can.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_CAN component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CAN", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CAN_FILES))))"},
    {"ZEPHYR_DRIVERS_CAN", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CAN_FILES))))"},
    {"ZEPHYR_DRIVERS_CAN", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CAN_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CAN component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CAN", ZEPHYR_DRIVERS_CAN_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CAN component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CAN"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CAN"
-doc_end
