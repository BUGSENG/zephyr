-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/cpu_mask\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/thread.*$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^include/zephyr/kernel/thread.*$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/include/kthread\\.h$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/dynamic\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/dynamic_disabled\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/busy_wait\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/work\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^lib/os/user_work\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/system_work_q\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/float\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/sched\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/include/ksched\\.h$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/include/kswap\\.h$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/nothread\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/timeslicing\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/include/priority_q\\.h$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/priority_queues\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/idle\\.c$"}
-file_tag+={ZEPHYR_KERNEL_THREADING_FILES, "^kernel/include/kernel_tls\\.h$"}

-doc_begin="The ZEPHYR_KERNEL_THREADING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_THREADING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_THREADING_FILES))))"},
    {"ZEPHYR_KERNEL_THREADING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_THREADING_FILES))))"},
    {"ZEPHYR_KERNEL_THREADING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_THREADING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_THREADING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_THREADING", ZEPHYR_KERNEL_THREADING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_THREADING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_THREADING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_THREADING"
-doc_end
