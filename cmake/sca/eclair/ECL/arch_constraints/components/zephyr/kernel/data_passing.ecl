-file_tag+={ZEPHYR_KERNEL_DATA_PASSING_FILES, "^kernel/queue\\.c$"}
-file_tag+={ZEPHYR_KERNEL_DATA_PASSING_FILES, "^kernel/stack\\.c$"}
-file_tag+={ZEPHYR_KERNEL_DATA_PASSING_FILES, "^kernel/msg_q\\.c$"}
-file_tag+={ZEPHYR_KERNEL_DATA_PASSING_FILES, "^kernel/mailbox\\.c$"}
-file_tag+={ZEPHYR_KERNEL_DATA_PASSING_FILES, "^kernel/pipe\\.c$"}

-doc_begin="The ZEPHYR_KERNEL_DATA_PASSING component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_KERNEL_DATA_PASSING", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_KERNEL_DATA_PASSING_FILES))))"},
    {"ZEPHYR_KERNEL_DATA_PASSING", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_KERNEL_DATA_PASSING_FILES))))"},
    {"ZEPHYR_KERNEL_DATA_PASSING", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_KERNEL_DATA_PASSING_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_KERNEL_DATA_PASSING component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_KERNEL_DATA_PASSING", ZEPHYR_KERNEL_DATA_PASSING_FILES}
-doc_end

-doc_begin="Show ZEPHYR_KERNEL_DATA_PASSING component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_KERNEL_DATA_PASSING"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_KERNEL_DATA_PASSING"
-doc_end
