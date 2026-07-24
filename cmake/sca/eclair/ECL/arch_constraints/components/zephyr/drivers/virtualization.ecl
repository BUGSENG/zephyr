-file_tag+={ZEPHYR_DRIVERS_VIRTUALIZATION_FILES, "^zephyr/drivers/virtualization/.*$"}
-file_tag+={ZEPHYR_DRIVERS_VIRTUALIZATION_FILES, "^zephyr/include/zephyr/drivers/virtualization/.*$"}
-file_tag+={ZEPHYR_DRIVERS_VIRTUALIZATION_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/ivshmem\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_VIRTUALIZATION component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_VIRTUALIZATION", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_VIRTUALIZATION_FILES))))"},
    {"ZEPHYR_DRIVERS_VIRTUALIZATION", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_VIRTUALIZATION_FILES))))"},
    {"ZEPHYR_DRIVERS_VIRTUALIZATION", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_VIRTUALIZATION_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_VIRTUALIZATION component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_VIRTUALIZATION", ZEPHYR_DRIVERS_VIRTUALIZATION_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_VIRTUALIZATION component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_VIRTUALIZATION"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_VIRTUALIZATION"
-doc_end
