rem 
cd c:\stage\server\cwva
rem 
rem mv ferr.log log/ferr_$(date -d "today" +"%Y%m%d%H%M").log
rem mv fout.log log/fout_$(date -d "today" +"%Y%m%d%H%M").log
rem
java -cp res;C:\temp\git\cwvaServer\target\cwvaServer-2.4.7.jar -Dgcp_bucket=%gcp_bucket% -Xmx256m function.Main -cfg res\serverFcnPC.rson >fout.log 2>ferr.log


