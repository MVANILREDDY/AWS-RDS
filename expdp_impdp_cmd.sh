#command to export table
expdp master/${master_password}@$ORACLE_SID parfile=sample_export_table.par
#command to import table
impdp master/${master_password}@$ORACLE_SID parfile=sample_import_table.par
