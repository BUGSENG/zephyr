-file_tag+={ZEPHYR_MODULES_HAL_RPI_PICO_FILES, "^zephyr/modules/hal_rpi_pico/.*$"}

-doc_begin="The ZEPHYR_MODULES_HAL_RPI_PICO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_MODULES_HAL_RPI_PICO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_RPI_PICO_FILES))))"},
    {"ZEPHYR_MODULES_HAL_RPI_PICO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_MODULES_HAL_RPI_PICO_FILES))))"},
    {"ZEPHYR_MODULES_HAL_RPI_PICO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_MODULES_HAL_RPI_PICO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_MODULES_HAL_RPI_PICO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_MODULES_HAL_RPI_PICO", ZEPHYR_MODULES_HAL_RPI_PICO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_MODULES_HAL_RPI_PICO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_MODULES_HAL_RPI_PICO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_MODULES_HAL_RPI_PICO"
-doc_end
