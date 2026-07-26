-file_tag+={ZEPHYR_LIB_UTILS_MATH_FILES, "^include/zephyr/sys/math_extras\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_MATH_FILES, "^include/zephyr/sys/math_extras_impl\\.h$"}
-file_tag+={ZEPHYR_LIB_UTILS_MATH_FILES, "^include/zephyr/math/.*$"}
-file_tag+={ZEPHYR_LIB_UTILS_MATH_FILES, "^include/zephyr/math/interpolation\\.h$"}

-doc_begin="The ZEPHYR_LIB_UTILS_MATH component definition."
-config=B.INDEPENDENCE,component_entities+=
    {"ZEPHYR_LIB_UTILS_MATH", content,
        "linkage(internal)&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_MATH_FILES))))"},
    {"ZEPHYR_LIB_UTILS_MATH", content,
        "linkage(external)&&any_decl(forward_decl()&&loc(top(file(ZEPHYR_LIB_UTILS_MATH_FILES))))"},
    {"ZEPHYR_LIB_UTILS_MATH", content,
        "linkage(external)&&!any_decl(forward_decl())&&any_decl(loc(top(file(ZEPHYR_LIB_UTILS_MATH_FILES))))"}
-doc_end

-doc_begin="Files belonging to the ZEPHYR_LIB_UTILS_MATH component."
-config=B.INDEPENDENCE,component_files+=
    {"ZEPHYR_LIB_UTILS_MATH", ZEPHYR_LIB_UTILS_MATH_FILES}
-doc_end

-doc_begin="Show ZEPHYR_LIB_UTILS_MATH component contents."
-config=B.INDEPENDENCE,show_component_entities+="ZEPHYR_LIB_UTILS_MATH"
-config=B.INDEPENDENCE,show_component_files+="ZEPHYR_LIB_UTILS_MATH"
-doc_end
