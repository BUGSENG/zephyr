-file_tag+={ZEPHYR_DRIVERS_HWINFO_FILES, "^zephyr/include/zephyr/drivers/hwinfo\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_HWINFO_FILES, "^zephyr/drivers/hwinfo/.*$"}
-file_tag+={ZEPHYR_DRIVERS_HWINFO_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/hwinfo.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_HWINFO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_HWINFO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HWINFO_FILES))))"},
    {"ZEPHYR_DRIVERS_HWINFO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_HWINFO_FILES))))"},
    {"ZEPHYR_DRIVERS_HWINFO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HWINFO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_HWINFO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_HWINFO", ZEPHYR_DRIVERS_HWINFO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_HWINFO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_HWINFO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_HWINFO"
-doc_end
