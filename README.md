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

Приведите скриншот systemctl status memcached, где будет видно, что memcached запущен.  
![Screenshot_376](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/14cbc65b-d1f2-4ec3-89d9-b4491e77ea54)  

### Задание 3. Удаление по TTL в Memcached

Запишите в memcached несколько ключей с любыми именами и значениями, для которых выставлен TTL 5.  

Приведите скриншот, на котором видно, что спустя 5 секунд ключи удалились из базы.  
![Screenshot_378](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/51e917a1-644e-444d-a783-8d97387244f8)  

### Задание 4. Запись данных в Redis

Запишите в Redis несколько ключей с любыми именами и значениями.  

Через redis-cli достаньте все записанные ключи и значения из базы, приведите скриншот этой операции.  

