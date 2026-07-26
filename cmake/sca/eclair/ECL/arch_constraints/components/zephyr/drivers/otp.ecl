-file_tag+={ZEPHYR_DRIVERS_OTP_FILES, "^include/zephyr/drivers/otp\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_OTP_FILES, "^drivers/otp/.*$"}
-file_tag+={ZEPHYR_DRIVERS_OTP_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/otp.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_OTP component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_OTP", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_OTP_FILES))))"},
    {"ZEPHYR_DRIVERS_OTP", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_OTP_FILES))))"},
    {"ZEPHYR_DRIVERS_OTP", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_OTP_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_OTP component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_OTP", ZEPHYR_DRIVERS_OTP_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_OTP component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_OTP"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_OTP"
-doc_end
