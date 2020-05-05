#!/bin/bash
CHECK=$0
SERVICE=httpd
DATE=`date`
OUTPUT=$(ps aux | grep -v grep | grep -v $CHECK | grep $SERVICE)
echo $OUTPUT
if [ "${#OUTPUT}" -gt 0 ] ;
then echo "$DATE: $SERVICE service running, everything is fine"
else
 echo "$DATE: $SERVICE is not running"
 service $SERVICE start
 STATUS=$(ps aux | grep -v grep | grep -v $CHECK | grep $SERVICE)
 echo "$DATE: $SERVICE started successfully"
fi
