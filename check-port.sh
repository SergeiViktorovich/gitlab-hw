#!/bin/bash
FILE_NGINX="/var/www/html/index.nginx-debian.html"
IP="127.0.0.1"
PORT="80"
nc -z "$IP" "$PORT"
ACCESS_PORT=$?
#Проверяем условие
if [[ -f $FILE_NGINX && $ACCESS_PORT -eq 0 ]]; then
    exit 0
else
    exit 1
fi
