-file_tag+={ZEPHYR_DRIVERS_AUDIO_FILES, "^zephyr/drivers/audio/.*$"}
-file_tag+={ZEPHYR_DRIVERS_AUDIO_FILES, "^zephyr/include/zephyr/audio/.*$"}
-file_tag+={ZEPHYR_DRIVERS_AUDIO_FILES, "^zephyr/include/zephyr/drivers/mic_privacy/.*$"}

-doc_begin="The ZEPHYR_DRIVERS_AUDIO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_DRIVERS_AUDIO", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_DRIVERS_AUDIO_FILES))))"},
    {"ZEPHYR_DRIVERS_AUDIO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_DRIVERS_AUDIO_FILES))))"},
    {"ZEPHYR_DRIVERS_AUDIO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_DRIVERS_AUDIO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_DRIVERS_AUDIO component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_DRIVERS_AUDIO", ZEPHYR_DRIVERS_AUDIO_FILES}
-doc_end

-doc_begin="Show ZEPHYR_DRIVERS_AUDIO component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_DRIVERS_AUDIO"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_DRIVERS_AUDIO"
-doc_end
