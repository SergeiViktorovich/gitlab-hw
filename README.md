# Домашнее задание к занятию «Кеширование Redis/memcached» - Андреев Сергей


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

### Задание 1. Кеширование
Приведите примеры проблем, которые может решить кеширование.  

* Повышает скорость и производительность;  
* Доступности и надежности;  
* Снижает нагрузку на сервер и базу;  
* Сглаживание бустов трафика;  
* Экономия ресурсов.  
---

### Задание 2. Memcached

Установите и запустите memcached.  


### Задание 3. Удаление по TTL в Memcached

3.1. Напишите пять преимуществ SQL-систем по отношению к NoSQL.  

#### Ответ:
1. поддержка ACID
2. структурированность данных
3. простой и понятный язык запросов
4. поддержка сложных запросов
5. универсальность и масштабируемость

### Задание 4. Запись данных в Redis

Необходимо производить большое количество вычислений при работе с огромным количеством данных, под  
эту задачу выделено 1000 машин.  

На основе какого критерия будете выбирать тип СУБД и какая модель распределённых вычислений здесь  
справится лучше всего и почему?  

#### Ответ:
При выборе типа СУБД важно учитывать следующие критерии:  

1. масштабируемость
2. производительность
3. надежность и стабильность
4. безопасность
5. устойчивость к разделению

Для данной задачи можно рассмотреть различные комбинации СУБД и моделей распределенных вычислений,  
такие как Apache Hadoop с HDFS и MapReduce, Apache Spark, Cassandra, MongoDB, или реляционные базы  
данных с горизонтальным масштабированием.  
