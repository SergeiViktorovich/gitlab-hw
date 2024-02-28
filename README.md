# Домашнее задание к занятию "Домашнее задание к занятию «Git»" - "Андреев Сергей"


### Инструкция по выполнению домашнего задания

   1. Сделайте `fork` данного репозитория к себе в Github и переименуйте его по названию или номеру занятия, например, https://github.com/имя-вашего-репозитория/git-hw или  https://github.com/имя-вашего-репозитория/7-1-ansible-hw).
   2. Выполните клонирование данного репозитория к себе на ПК с помощью команды `git clone`.
   3. Выполните домашнее задание и заполните у себя локально этот файл README.md:
      - впишите вверху название занятия и вашу фамилию и имя
      - в каждом задании добавьте решение в требуемом виде (текст/код/скриншоты/ссылка)
      - для корректного добавления скриншотов воспользуйтесь [инструкцией "Как вставить скриншот в шаблон с решением](https://github.com/netology-code/sys-pattern-homework/blob/main/screen-instruction.md)
      - при оформлении используйте возможности языка разметки md (коротко об этом можно посмотреть в [инструкции  по MarkDown](https://github.com/netology-code/sys-pattern-homework/blob/main/md-instruction.md))
   4. После завершения работы над домашним заданием сделайте коммит (`git commit -m "comment"`) и отправьте его на Github (`git push origin`);
   5. Для проверки домашнего задания преподавателем в личном кабинете прикрепите и отправьте ссылку на решение в виде md-файла в вашем Github.
   6. Любые вопросы по выполнению заданий спрашивайте в чате учебной группы и/или в разделе “Вопросы по заданию” в личном кабинете.
   
Желаем успехов в выполнении домашнего задания!
   
### Дополнительные материалы, которые могут быть полезны для выполнения задания

1. [Руководство по оформлению Markdown файлов](https://gist.github.com/Jekins/2bf2d0638163f1294637#Code)

---

### Задание 1

![Screenshot_322](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/53e216e0-f3aa-4b76-b1f5-f45634dc6987)  

### Установка PostgreSQL
sudo apt install postgresql
### Установка репозитория Zabbix
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-4+ubuntu22.04_all.deb  
sudo dpkg -i zabbix-release_6.0-4+ubuntu22.04_all.deb  
sudo apt update
### Установка Zabbix сервер, веб-интерфейс
sudo apt install zabbix-server-pgsql zabbix-frontend-php php8.1-pgsql zabbix-apache-conf zabbix-sql-scripts
### Создаем базу данных
sudo su - postgres -c 'psql --command "CREATE USER zabbix WITH PASSWORD '\'123456789\'';"'  
sudo su - postgres -c 'psql --command "CREATE DATABASE zabbix OWNER zabbix;"'
### На хосте Zabbix сервера импортируйем начальную схему и данные
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
### Настраеваем базу данных для Zabbix сервера
sudo sed -i 's/# DBPassword=/DBPassword=123456789/g' /etc/zabbix/zabbix_server.conf
### Запускаем процессы Zabbix сервера
sudo systemctl restart zabbix-server apache2  
sudo systemctl enable zabbix-server apache2
---

### Задание 2

![Screenshot_319](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/c2a5dd0e-a644-4467-b41a-9d93aa997ed2)  
![Screenshot_320](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/a7a28dea-8177-4c37-9f59-9356574d1502)  

