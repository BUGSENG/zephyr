-project_name=getenv("ECLAIR_PROJECT_NAME")
-project_root=getenv("ECLAIR_PROJECT_ROOT")
-setq=data_dir,getenv("ECLAIR_DATA_DIR")

-enable=B.REPORT.ECB
-config=B.REPORT.ECB,output=join_paths(data_dir,"FRAME.@FRAME@.ecb")
-config=B.REPORT.ECB,preprocessed=show
-config=B.REPORT.ECB,macros=10

-enable=B.EXPLAIN

-eval_file=MISRA_C_2012_selection.ecl
-eval_file=common_config.ecl
