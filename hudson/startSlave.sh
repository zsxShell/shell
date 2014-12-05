#!/bin/sh
kill -9 `ps aux | grep java | grep slave.jar | grep -v grep | awk '{print $2}'`
nohup java -jar slave.jar -jnlpUrl http://10.16.15.76:8081/hudson/slaveJnlp?name=10.16.15.45 > /dev/null 2>&1 & 
