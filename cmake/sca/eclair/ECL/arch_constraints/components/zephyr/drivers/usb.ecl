-file_tag+={ZEPHYR_DRIVERS_USB_FILES, "^zephyr/drivers/usb/.*$"}
-file_tag+={ZEPHYR_DRIVERS_USB_FILES, "^zephyr/include/zephyr/drivers/usb/.*$"}
-file_tag+={ZEPHYR_DRIVERS_USB_FILES, "^.*/build/zephyr/include/generated/zephyr/syscalls/usb_bc12\\.h$"}

-doc_begin="The ZEPHYR_DRIVERS_USB component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_USB", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_USB_FILES))))"},
    {"ZEPHYR_DRIVERS_USB", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_USB_FILES))))"},
    {"ZEPHYR_DRIVERS_USB", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_USB_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_USB component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_USB", ZEPHYR_DRIVERS_USB_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_USB component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_USB"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_USB"
-doc_end
