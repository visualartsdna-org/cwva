#!/bin/sh
#
mv ferr.log log/ferr_$(date -d "today" +"%Y%m%d%H%M").log
mv fout.log log/fout_$(date -d "today" +"%Y%m%d%H%M").log
#
# Why does this one have lsys in path?
#sudo java -cp bin/cwvaServer-2.1.0.jar:bin/lsys-2.0.1.jar -Dgcp_bucket=cloud-ai-platform-b42a042e-a998-4243-a202-e1c90e536170 function.Main -cfg serverFcn.rson >fcn/out.log 2>fcn/err.log &
sudo java -cp bin/cwvaServer-2.1.0.jar -Dgcp_bucket=? function.Main -cfg serverFcn.rson >fout.log 2>ferr.log &

