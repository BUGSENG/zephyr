-setq=ecls_dir,getenv("ECLS_DIR")

-doc="Enable helper service to explain software component configuration."
-enable=B.EXPLAIN

-doc="Enable service for Software Architectural Constraints checking."
-enable=B.INDEPENDENCE

-doc="Define helper function to evaluate ECL files by supplying a path with globs."
defun(eval_file_glob(path),
  mapcar(:eval_file,glob(path))
)

-doc_begin="Define entities of interest."
-config=B.INDEPENDENCE,all_component_entities+=
  "((kind(function))|| (kind(var)&&linkage(external)))&&
     all_decl(loc(top(file(kind(user||main_file)))))"
-doc_end

eval_file(join_paths(ecls_dir,"components.ecl"))
