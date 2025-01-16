#!/bin/sh
#
cd /home/rick_spates/cwva
#
mv ferr.log log/ferr_$(date -d "today" +"%Y%m%d%H%M").log
mv fout.log log/fout_$(date -d "today" +"%Y%m%d%H%M").log
#
export PATH=$PATH:~/bin
#
sudo java -cp res:/home/rick_spates/cwvaServer/target/cwvaServer-2.4.1.jar -Dgcp_bucket=$gcp_bucket -Xmx256m function.Main -cfg res/serverFcn.rson >fout.log 2>ferr.log &

