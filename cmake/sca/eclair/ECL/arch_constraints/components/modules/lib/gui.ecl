-file_tag+={MODULES_LIB_GUI_FILES, "^modules/lib/gui/.*$"}

-doc_begin="The MODULES_LIB_GUI component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"MODULES_LIB_GUI", content,
        "linkage(internal)&&any_decl(loc(top(file(MODULES_LIB_GUI_FILES))))"},
    {"MODULES_LIB_GUI", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(MODULES_LIB_GUI_FILES))))"},
    {"MODULES_LIB_GUI", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(MODULES_LIB_GUI_FILES))))"}
-doc_end

-doc_begin="Files belonging to the MODULES_LIB_GUI component."
-config=B.INDEPENDENCE,component_files+=
    {"MODULES_LIB_GUI", MODULES_LIB_GUI_FILES}
-doc_end

-doc_begin="Show MODULES_LIB_GUI component contents."
-config=B.INDEPENDENCE,show_component_entities+="MODULES_LIB_GUI"
-config=B.INDEPENDENCE,show_component_files+="MODULES_LIB_GUI"
-doc_end
