#!/bin/sh
#
top -b -n1 | head -5 ; top -b -n1 | grep java; df | grep 'sda1' ;ls -l *.log;echo errors; grep Exception *err.log | wc

#   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
# 4175 root      20   0 3202080   1.2g  29884 S   0.0  32.4  21:39.36 java
#26091 root      20   0 2337612 196408  26712 S   0.0   4.9  11:50.72 java
