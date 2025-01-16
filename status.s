#!/bin/sh
#
top -b -n1 | head -5 ; top -b -n1 | grep java; df | grep 'sda1' ;ls -l *.log;echo errors; grep Exception *err.log | wc
