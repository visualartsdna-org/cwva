rem 
cd c:\stage\server\cwva
rem 
rem mv err.log log/err_$(date -d "today" +"%Y%m%d%H%M").log
rem mv out.log log/out_$(date -d "today" +"%Y%m%d%H%M").log
rem 
java -cp res;C:\temp\git\cwvaServer\target\cwvaServer-2.4.0.jar -Dgcp_bucket=%gcp_bucket%  cwva.Main -cfg res\serverCwva2PC.rson >out.log 2>err.log


