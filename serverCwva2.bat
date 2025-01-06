rem 
cd c:\stage\server\cwva
rem 
rem mv err.log log/err_$(date -d "today" +"%Y%m%d%H%M").log
rem mv out.log log/out_$(date -d "today" +"%Y%m%d%H%M").log
rem 
java -cp bin\cwvaServer-2.4.0.jar -Dgcp_bucket=%gcp_bucket  cwva.Main -cfg serverCwva2.rson >out.log 2>err.log


