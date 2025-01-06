#!/bin/sh
#
cd /home/rick_spates/cwva
#
mv err.log log/err_$(date -d "today" +"%Y%m%d%H%M").log
mv out.log log/out_$(date -d "today" +"%Y%m%d%H%M").log
#
export PATH=$PATH:~/bin
#
sudo java -cp resources:/home/rick_spates/cwvaServer/target/cwvaServer-2.4.0.jar -Dgcp_bucket=$gcp_bucket cwva.Main -cfg res/serverCwva2.rson >out.log 2>err.log &

