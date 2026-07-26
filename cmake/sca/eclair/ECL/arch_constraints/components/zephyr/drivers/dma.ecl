-file_tag+={ZEPHYR_DRIVERS_DMA_FILES, "^include/zephyr/drivers/dma\\.h$"}
-file_tag+={ZEPHYR_DRIVERS_DMA_FILES, "^drivers/dma/.*$"}
-file_tag+={ZEPHYR_DRIVERS_DMA_FILES, "^include/zephyr/drivers/dma/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_DMA component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_DMA", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DMA_FILES))))"},
    {"ZEPHYR_DRIVERS_DMA", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_DMA_FILES))))"},
    {"ZEPHYR_DRIVERS_DMA", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_DMA_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_DMA component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_DMA", ZEPHYR_DRIVERS_DMA_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_DMA component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_DMA"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_DMA"
-doc_end
