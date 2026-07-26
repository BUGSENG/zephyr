-file_tag+={ZEPHYR_LIB_MIDI2_FILES, "^lib/midi2/.*$"}

-doc_begin="The ZEPHYR_LIB_MIDI2 component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_MIDI2", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_MIDI2_FILES))))"},
    {"ZEPHYR_LIB_MIDI2", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_MIDI2_FILES))))"},
    {"ZEPHYR_LIB_MIDI2", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_MIDI2_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_MIDI2 component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_MIDI2", ZEPHYR_LIB_MIDI2_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_MIDI2 component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_MIDI2"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_MIDI2"
-doc_end
