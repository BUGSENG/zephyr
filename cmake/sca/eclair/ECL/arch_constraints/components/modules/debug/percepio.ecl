-file_tag+={MODULES_DEBUG_PERCEPIO_FILES, "^.*/modules/debug/percepio/.*$"}

-doc_begin="The MODULES_DEBUG_PERCEPIO component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_DEBUG_PERCEPIO", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_DEBUG_PERCEPIO_FILES))))"},
    {"MODULES_DEBUG_PERCEPIO", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_DEBUG_PERCEPIO_FILES))))"},
    {"MODULES_DEBUG_PERCEPIO", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_DEBUG_PERCEPIO_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_DEBUG_PERCEPIO component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_DEBUG_PERCEPIO", MODULES_DEBUG_PERCEPIO_FILES}
-doc_end

-doc_begin="Show MODULES_DEBUG_PERCEPIO component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_DEBUG_PERCEPIO"
-config=B.INDEPENDENCE,show_component_files+="MODULES_DEBUG_PERCEPIO"
-doc_end
