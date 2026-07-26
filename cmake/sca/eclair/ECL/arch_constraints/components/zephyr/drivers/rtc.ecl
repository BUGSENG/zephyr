-file_tag+={ZEPHYR_DRIVERS_RTC_FILES, "^include/zephyr/drivers/rtc\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_RTC_FILES, "^drivers/rtc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_RTC_FILES, "^include/zephyr/drivers/rtc/.*$"}
-file_tag+={ZEPHYR_DRIVERS_RTC_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/rtc.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_RTC component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_RTC", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_RTC_FILES))))"},
    {"ZEPHYR_DRIVERS_RTC", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_RTC_FILES))))"},
    {"ZEPHYR_DRIVERS_RTC", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_RTC_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_RTC component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_RTC", ZEPHYR_DRIVERS_RTC_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_RTC component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_RTC"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_RTC"
-doc_end
