#!/bin/sh
#
mv err.log log/err_$(date -d "today" +"%Y%m%d%H%M").log
mv out.log log/out_$(date -d "today" +"%Y%m%d%H%M").log
#
sudo java -cp bin/cwvaServer-2.1.0.jar -Dgcp_bucket=cloud-ai-platform-b42a042e-a998-4243-a202-e1c90e536170 cwva.Main -cfg serverCwva2.rson >out.log 2>err.log &

