-file_tag+={ZEPHYR_DRIVERS_FPGA_FILES, "^include/zephyr/drivers/fpga\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_FPGA_FILES, "^drivers/fpga/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_FPGA component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_FPGA", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FPGA_FILES))))"},
    {"ZEPHYR_DRIVERS_FPGA", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_FPGA_FILES))))"},
    {"ZEPHYR_DRIVERS_FPGA", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_FPGA_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_FPGA component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_FPGA", ZEPHYR_DRIVERS_FPGA_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_FPGA component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_FPGA"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_FPGA"
-doc_end
