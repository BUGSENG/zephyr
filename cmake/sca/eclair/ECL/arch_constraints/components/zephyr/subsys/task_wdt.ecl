-file_tag+={ZEPHYR_SUBSYS_TASK_WDT_FILES, "^subsys/task_wdt/.*$"}
-file_tag+={ZEPHYR_SUBSYS_TASK_WDT_FILES, "^include/zephyr/task_wdt/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_TASK_WDT component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_TASK_WDT", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TASK_WDT_FILES))))"},
    {"ZEPHYR_SUBSYS_TASK_WDT", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_TASK_WDT_FILES))))"},
    {"ZEPHYR_SUBSYS_TASK_WDT", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_TASK_WDT_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_TASK_WDT component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_TASK_WDT", ZEPHYR_SUBSYS_TASK_WDT_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_TASK_WDT component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_TASK_WDT"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_TASK_WDT"
-doc_end
