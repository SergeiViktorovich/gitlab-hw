# Домашнее задание к занятию «Очереди RabbitMQ» - Андреев Сергей


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

### Задание 1. Установка RabbitMQ

Используя Vagrant или VirtualBox, создайте виртуальную машину и установите RabbitMQ. Добавьте  
management plug-in и зайдите в веб-интерфейс.  

Итогом выполнения домашнего задания будет приложенный скриншот веб-интерфейса RabbitMQ.  
![Screenshot_391](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/cbfc5189-567f-4da4-b2d2-9552da5c2ec4)  
 
---

### Задание 2. Отправка и получение сообщений

Используя приложенные скрипты, проведите тестовую отправку и получение сообщения. Для отправки  
сообщений необходимо запустить скрипт producer.py.  

Для работы скриптов вам необходимо установить Python версии 3 и библиотеку Pika. Также в скриптах нужно  
указать IP-адрес машины, на которой запущен RabbitMQ, заменив localhost на нужный IP.  
```md
$ pip install pika
```
Зайдите в веб-интерфейс, найдите очередь под названием hello и сделайте скриншот. После чего запустите  
второй скрипт consumer.py и сделайте скриншот результата выполнения скрипта  

В качестве решения домашнего задания приложите оба скриншота, сделанных на этапе выполнения.  

Для закрепления материала можете попробовать модифицировать скрипты, чтобы поменять название  
очереди и отправляемое сообщение.  

#### Скрипт producer.py  
![Screenshot_394](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/f08bb113-b6dc-4e30-a57a-3bc160e5a892)  
#### Скрипт consumer.py  
![Screenshot_393](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/543d9ef5-37a3-4fe4-b32e-62d53a59e751)  

### Задание 3. Подготовка HA кластера

Используя Vagrant или VirtualBox, создайте вторую виртуальную машину и установите RabbitMQ. Добавьте в  
файл hosts название и IP-адрес каждой машины, чтобы машины могли видеть друг друга по имени.  

Пример содержимого hosts файла:  
```md
$ cat /etc/hosts
192.168.0.10 rmq01
192.168.0.11 rmq02
```
После этого ваши машины могут пинговаться по имени.  

Затем объедините две машины в кластер и создайте политику ha-all на все очереди.  

В качестве решения домашнего задания приложите скриншоты из веб-интерфейса с информацией о  
доступных нодах в кластере и включённой политикой.  

Также приложите вывод команды с двух нод:  
```md
$ rabbitmqctl cluster_status
```
Для закрепления материала снова запустите скрипт producer.py и приложите скриншот выполнения команды  
на каждой из нод:  
```md
$ rabbitmqadmin get queue='hello'
```
После чего попробуйте отключить одну из нод, желательно ту, к которой подключались из скрипта, затем  
поправьте параметры подключения в скрипте consumer.py на вторую ноду и запустите его.  

Приложите скриншот результата работы второго скрипта.  
![Screenshot_399](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/41bec160-f1a6-4cc2-8981-5314e4b23850)  

