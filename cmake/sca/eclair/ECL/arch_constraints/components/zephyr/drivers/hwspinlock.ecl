-file_tag+={ZEPHYR_DRIVERS_HWSPINLOCK_FILES, "^zephyr/include/zephyr/drivers/hwspinlock\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_HWSPINLOCK_FILES, "^zephyr/drivers/hwspinlock/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_HWSPINLOCK component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_HWSPINLOCK", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HWSPINLOCK_FILES))))"},
    {"ZEPHYR_DRIVERS_HWSPINLOCK", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_HWSPINLOCK_FILES))))"},
    {"ZEPHYR_DRIVERS_HWSPINLOCK", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_HWSPINLOCK_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_HWSPINLOCK component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_HWSPINLOCK", ZEPHYR_DRIVERS_HWSPINLOCK_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_HWSPINLOCK component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_HWSPINLOCK"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_HWSPINLOCK"
-doc_end
