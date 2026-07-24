-file_tag+={ZEPHYR_DRIVERS_DISK_FILES, "^zephyr/include/zephyr/drivers/disk\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_DISK_FILES, "^zephyr/drivers/disk/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DISK_FILES, "^zephyr/include/zephyr/drivers/disk/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DISK_FILES, "^zephyr/include/zephyr/drivers/loopback_disk\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_DISK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_DISK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DISK_FILES))))"},
    {"ZEPHYR_DRIVERS_DISK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_DISK_FILES))))"},
    {"ZEPHYR_DRIVERS_DISK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DISK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_DISK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_DISK", ZEPHYR_DRIVERS_DISK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_DISK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_DISK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_DISK"
-doc_end
