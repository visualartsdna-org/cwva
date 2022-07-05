#!/bin/sh
#
mv fcn/err.log fcn/log/err_$(date -d "today" +"%Y%m%d%H%M").log
mv fcn/out.log fcn/log/out_$(date -d "today" +"%Y%m%d%H%M").log
#
sudo java -cp bin/cwvaServer-2.0.3.jar:bin/lsys-2.0.1.jar function.Main -cfg serverFcn.rson >fcn/out.log 2>fcn/err.log &

