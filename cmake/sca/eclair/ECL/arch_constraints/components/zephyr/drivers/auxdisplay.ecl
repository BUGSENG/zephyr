-file_tag+={ZEPHYR_DRIVERS_AUXDISPLAY_FILES, "^include/zephyr/drivers/auxdisplay\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_AUXDISPLAY_FILES, "^drivers/auxdisplay/.*$"}
-file_tag+={ZEPHYR_DRIVERS_AUXDISPLAY_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/auxdisplay.*\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_AUXDISPLAY component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_AUXDISPLAY", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_AUXDISPLAY_FILES))))"},
    {"ZEPHYR_DRIVERS_AUXDISPLAY", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_AUXDISPLAY_FILES))))"},
    {"ZEPHYR_DRIVERS_AUXDISPLAY", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_AUXDISPLAY_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_AUXDISPLAY component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_AUXDISPLAY", ZEPHYR_DRIVERS_AUXDISPLAY_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_AUXDISPLAY component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_AUXDISPLAY"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_AUXDISPLAY"
-doc_end
