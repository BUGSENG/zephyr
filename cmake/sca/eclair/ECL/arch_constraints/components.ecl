############################################################
# ZEPHYR COMPONENTS
############################################################

eval_file(join_paths(ecls_dir,"components/zephyr/arch.ecl"))

eval_file(join_paths(ecls_dir,"components/zephyr/kernel.ecl"))

eval_file(join_paths(ecls_dir,"components/zephyr/linker.ecl"))

eval_file(join_paths(ecls_dir,"components/zephyr/toolchain.ecl"))

eval_file(join_paths(ecls_dir,"components/zephyr/platform.ecl"))

eval_file(join_paths(ecls_dir,"components/zephyr/config.ecl"))

eval_file(join_paths(ecls_dir,"components/zephyr/devicetree.ecl"))

eval_file_glob(join_paths(ecls_dir,"components/zephyr/lib/*.ecl"))

eval_file_glob(join_paths(ecls_dir,"components/zephyr/drivers.ecl"))

eval_file_glob(join_paths(ecls_dir,"components/zephyr/subsys.ecl"))

eval_file_glob(join_paths(ecls_dir,"components/zephyr/modules.ecl"))


############################################################
# MODULES COMPONENT DEFINITIONS
############################################################

eval_file_glob(join_paths(ecls_dir,"components/modules/*.ecl"))

############################################################
# OTHER COMPONENT DEFINITIONS
############################################################

eval_file_glob(join_paths(ecls_dir,"components/cmakefiles.ecl"))

eval_file_glob(join_paths(ecls_dir,"components/zephyr-sdk.ecl"))

############################################################
# UNDEFINED COMPONENT
############################################################

-doc_begin="Placeholder for entities not assigned to any component."
-config=B.INDEPENDENCE,component_entities+=
    {"UNDEFINED", content, "any_decl(any())"}
-doc_end


-doc_begin="Files not belonging to any specific component."
-config=B.INDEPENDENCE,component_files+=
    {"UNDEFINED", "any()"}
-doc_end

-doc_begin="Show UNDEFINED component contents."
-config=B.INDEPENDENCE,show_component_entities+="UNDEFINED"
-config=B.INDEPENDENCE,show_component_files+="UNDEFINED"
-doc_end

############################################################
# END
############################################################
