set head off;
set feed  off;
spool /home/orards/AAScripts/task_value.txt
SELECT rdsadmin.rdsadmin_s3_tasks.upload_to_s3(
p_bucket_name => 's3-bucket-name',
p_prefix => 'SCHEMA.DMP',
p_s3_prefix => 'BACKUP/',
p_directory_name => 'DATA_PUMP_DIR')
AS TASK_ID FROM DUAL;
