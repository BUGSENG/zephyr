-file_tag+={ZEPHYR_DRIVERS_CACHE_FILES, "^zephyr/include/zephyr/drivers/cache\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_CACHE_FILES, "^zephyr/drivers/cache/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_CACHE component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_CACHE", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CACHE_FILES))))"},
    {"ZEPHYR_DRIVERS_CACHE", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_CACHE_FILES))))"},
    {"ZEPHYR_DRIVERS_CACHE", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_CACHE_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_CACHE component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_CACHE", ZEPHYR_DRIVERS_CACHE_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_CACHE component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_CACHE"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_CACHE"
-doc_end
