-file_tag+={ZEPHYR_DRIVERS_PTP_CLOCK_FILES, "^zephyr/include/zephyr/drivers/ptp_clock\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_PTP_CLOCK_FILES, "^zephyr/drivers/ptp_clock/.*$"}
-file_tag+={ZEPHYR_DRIVERS_PTP_CLOCK_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/ptp_clock.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_PTP_CLOCK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_PTP_CLOCK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PTP_CLOCK_FILES))))"},
    {"ZEPHYR_DRIVERS_PTP_CLOCK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_PTP_CLOCK_FILES))))"},
    {"ZEPHYR_DRIVERS_PTP_CLOCK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_PTP_CLOCK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_PTP_CLOCK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_PTP_CLOCK", ZEPHYR_DRIVERS_PTP_CLOCK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_PTP_CLOCK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_PTP_CLOCK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_PTP_CLOCK"
-doc_end
