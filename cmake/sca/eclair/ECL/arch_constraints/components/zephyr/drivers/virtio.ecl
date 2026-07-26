-file_tag+={ZEPHYR_DRIVERS_VIRTIO_FILES, "^include/zephyr/drivers/virtio\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_VIRTIO_FILES, "^drivers/virtio/.*$"}
-file_tag+={ZEPHYR_DRIVERS_VIRTIO_FILES, "^include/zephyr/drivers/virtio/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_VIRTIO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_VIRTIO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_VIRTIO_FILES))))"},
    {"ZEPHYR_DRIVERS_VIRTIO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_VIRTIO_FILES))))"},
    {"ZEPHYR_DRIVERS_VIRTIO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_VIRTIO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_VIRTIO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_VIRTIO", ZEPHYR_DRIVERS_VIRTIO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_VIRTIO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_VIRTIO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_VIRTIO"
-doc_end
