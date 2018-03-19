#!/bin/bash
curl -s -I 127.0.0.1:8888/nginx_status |grep -i "ok"
if [ $? -ne 0 ]
then
   systemctl stop keepalived.service
   exit 1
fi 
