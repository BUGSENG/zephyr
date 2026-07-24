-file_tag+={CMAKEFILES_FILES, "^.*/build/CMakeFiles/.*$"}

-doc_begin="The CMAKEFILES component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"CMAKEFILES", content,
        "linkage(internal)&&any_decl(loc(top(file(CMAKEFILES_FILES))))"},
    {"CMAKEFILES", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(CMAKEFILES_FILES))))"},
    {"CMAKEFILES", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(CMAKEFILES_FILES))))"}
-doc_end

-doc_begin="Files belonging to the CMAKEFILES component."
-config=B.INDEPENDENCE,component_files+=
    {"CMAKEFILES", CMAKEFILES_FILES}
-doc_end

-doc_begin="Show CMAKEFILES component contents."
-config=B.INDEPENDENCE,show_component_entities+="CMAKEFILES"
-config=B.INDEPENDENCE,show_component_files+="CMAKEFILES"
-doc_end
