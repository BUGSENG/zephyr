-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^zephyr/kernel/timer\\.c$"}
-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^zephyr/kernel/include/timeout_q\\.h$"}
-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^zephyr/kernel/timeout\\.c$"}
-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^zephyr/include/zephyr/sys/clock\\.h$"}
-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^zephyr/include/zephyr/sys_clock\\.h$"}
-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^zephyr/lib/os/clock\\.c$"}
-file_tag+={ZEPHYR_KERNEL_TIMING_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/clock\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_TIMING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_TIMING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_TIMING_FILES))))"},
    {"ZEPHYR_KERNEL_TIMING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_TIMING_FILES))))"},
    {"ZEPHYR_KERNEL_TIMING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_TIMING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_TIMING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_TIMING", ZEPHYR_KERNEL_TIMING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_TIMING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_TIMING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_TIMING"
-doc_end
