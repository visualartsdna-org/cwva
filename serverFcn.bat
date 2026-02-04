@echo off
set "MY_DIR=C:\temp\git\cwvaServer\target"
FOR /F "tokens=*" %%i IN ('ls -1 %MY_DIR% ^| grep -E "^cwvaServer-[0-9.]+jar"') DO (
    SET "FULL_PATH=%MY_DIR%\%%i"
)
rem 
cd c:\stage\server\cwva
echo on
rem 
rem mv ferr.log log/ferr_$(date -d "today" +"%Y%m%d%H%M").log
rem mv fout.log log/fout_$(date -d "today" +"%Y%m%d%H%M").log
rem
"C:\Program Files\Amazon Corretto\jdk11.0.27_6\bin\java" -cp res;%FULL_PATH% -Dgcp_bucket=%gcp_bucket% -Dfile.encoding=UTF-8 -Xmx256m function.Main -cfg res\serverFcnPC.rson >fout.log 2>ferr.log


