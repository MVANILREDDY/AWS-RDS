set head off;
set feed  off;
spool task_value.txt
SELECT rdsadmin.rdsadmin_s3_tasks.download_from_s3(
p_bucket_name => 's3-bucket-name',
p_s3_prefix => 'BACKUP/SCHEMA.DMP',
p_directory_name => 'DATA_PUMP_DIR')
AS TASK_ID FROM DUAL;
spool off;
