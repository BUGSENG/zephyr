-file_tag+={ZEPHYR_DRIVERS_RETAINED_MEM_FILES, "^zephyr/include/zephyr/drivers/retained_mem\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_RETAINED_MEM_FILES, "^zephyr/drivers/retained_mem/.*$"}
-file_tag+={ZEPHYR_DRIVERS_RETAINED_MEM_FILES, "^zephyr/include/zephyr/drivers/retained_mem/.*$"}
-file_tag+={ZEPHYR_DRIVERS_RETAINED_MEM_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/retained_mem.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_RETAINED_MEM component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_RETAINED_MEM", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_RETAINED_MEM_FILES))))"},
    {"ZEPHYR_DRIVERS_RETAINED_MEM", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_RETAINED_MEM_FILES))))"},
    {"ZEPHYR_DRIVERS_RETAINED_MEM", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_RETAINED_MEM_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_RETAINED_MEM component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_RETAINED_MEM", ZEPHYR_DRIVERS_RETAINED_MEM_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_RETAINED_MEM component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_RETAINED_MEM"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_RETAINED_MEM"
-doc_end
