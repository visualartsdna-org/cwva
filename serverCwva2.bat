@echo off
set "MY_DIR=C:\temp\git\cwvaServer\target"
FOR /F "tokens=*" %%i IN ('ls -1 %MY_DIR% ^| grep -E "^cwvaServer-[0-9.]+jar"') DO (
    SET "FULL_PATH=%MY_DIR%\%%i"
)
rem 
cd c:\stage\server\cwva
echo on
rem 
rem mv err.log log/err_$(date -d "today" +"%Y%m%d%H%M").log
rem mv out.log log/out_$(date -d "today" +"%Y%m%d%H%M").log
rem 
"C:\Program Files\Amazon Corretto\jdk11.0.27_6\bin\java" -cp res;%FULL_PATH% -Dgcp_bucket=%gcp_bucket% -Dfile.encoding=UTF-8 cwva.Main -cfg res\serverCwva2PC.rson >out.log 2>err.log


