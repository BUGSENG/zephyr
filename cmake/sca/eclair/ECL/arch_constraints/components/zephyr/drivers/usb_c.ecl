-file_tag+={ZEPHYR_DRIVERS_USB_C_FILES, "^zephyr/drivers/usb_c/.*$"}
-file_tag+={ZEPHYR_DRIVERS_USB_C_FILES, "^zephyr/include/zephyr/drivers/usb_c/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_USB_C component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_USB_C", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_USB_C_FILES))))"},
    {"ZEPHYR_DRIVERS_USB_C", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_USB_C_FILES))))"},
    {"ZEPHYR_DRIVERS_USB_C", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_USB_C_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_USB_C component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_USB_C", ZEPHYR_DRIVERS_USB_C_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_USB_C component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_USB_C"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_USB_C"
-doc_end
