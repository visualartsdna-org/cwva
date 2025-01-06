#!/bin/sh
#
cd /home/rick_spates/cwva
#
mv ferr.log log/ferr_$(date -d "today" +"%Y%m%d%H%M").log
mv fout.log log/fout_$(date -d "today" +"%Y%m%d%H%M").log
#
export PATH=$PATH:~/bin
#
sudo java -cp resources:/home/rick_spates/cwvaServer/target/cwvaServer-2.4.0.jar -Dgcp_bucket=$gcp_bucket function.Main -cfg serverFcn.rson >fout.log 2>ferr.log &

