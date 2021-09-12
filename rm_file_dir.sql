-- to remove single file from directory
begin
    UTL_FILE.FREMOVE ('DATA_PUMP_DIR','SCHEMA.dmp');
end;
/

--to remove all files in directory "DATA_PUMP_DIR"
begin
    for v_file in (select filename from 
    table(RDSADMIN.RDS_FILE_UTIL.LISTDIR('DATA_PUMP_DIR')) where type='file')
    loop
    UTL_FILE.FREMOVE ('DATA_PUMP_DIR', v_file.filename);
    end loop;
end;
/
