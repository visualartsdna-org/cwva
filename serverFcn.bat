rem 
cd c:\stage\server\cwva
rem 
rem 
rem mv ferr.log log/ferr_$(date -d "today" +"%Y%m%d%H%M").log
rem mv fout.log log/fout_$(date -d "today" +"%Y%m%d%H%M").log
rem
java -cp bin\cwvaServer-2.4.0.jar -Dgcp_bucket=%gcp_bucket  cwva.Main -cfg serverFcn.rson >fout.log 2>ferr.log


