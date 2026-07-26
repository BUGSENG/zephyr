-file_tag+={ZEPHYR_SUBSYS_USB_FILES, "^subsys/usb/.*$"}
-file_tag+={ZEPHYR_SUBSYS_USB_FILES, "^include/zephyr/usb/.*$"}
-file_tag+={ZEPHYR_SUBSYS_USB_FILES, "^include/zephyr/usb_c/.*$"}

-doc_begin="The ZEPHYR_SUBSYS_USB component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_SUBSYS_USB", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_SUBSYS_USB_FILES))))"},
    {"ZEPHYR_SUBSYS_USB", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_SUBSYS_USB_FILES))))"},
    {"ZEPHYR_SUBSYS_USB", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_SUBSYS_USB_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_SUBSYS_USB component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_SUBSYS_USB", ZEPHYR_SUBSYS_USB_FILES}
-doc_end

-doc_begin="Show ZEPHYR_SUBSYS_USB component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_SUBSYS_USB"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_SUBSYS_USB"
-doc_end
