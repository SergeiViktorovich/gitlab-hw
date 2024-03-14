#!/bin/bash
# задаем переменные
# что копируем
HOME_DIR=/home/user/
# куда копируем
BACKUP=/tmp/backup/
# логи
LOG=/var/log/backup.log
# команда
rsync -a --delete "$HOME_DIR" "$BACKUP" > /dev/null 2>&1
# запись в логи
if [ $? -eq  0 ]; then
    echo "$(date +"%D") Копирование дириктории $HOME_DIR выполнено!" >> "$LOG"
else
    echo "$(date +"%D") Копированире дириктории $HOME_DIR не выполнено!" >> "$LOG"
fi
