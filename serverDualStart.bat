rem 
cd c:\stage\server\cwva
rem 
rem mv err.log log/err_$(date -d "today" +"%Y%m%d%H%M").log
rem mv out.log log/out_$(date -d "today" +"%Y%m%d%H%M").log
rem 
start /b serverCwva2.bat
timeout 2
start /b serverFcn.bat

rem won't exit because two processes own this window
rem CANNOT close window
