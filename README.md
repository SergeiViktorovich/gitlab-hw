# Домашнее задание к занятию «Индексы» - Андреев Сергей


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

Напишите запрос к учебной базе данных, который вернёт процентное отношение общего размера всех индексов к общему размеру всех таблиц.  

### Решение 1

![Screenshot_430](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/cce36627-4a5c-46e0-a11b-6dc50e99b703)  

### Задание 2

Выполните explain analyze следующего запроса:  
```
select distinct concat(c.last_name, ' ', c.first_name), sum(p.amount) over (partition by c.customer_id, f.title)
from payment p, rental r, customer c, inventory i, film f
where date(p.payment_date) = '2005-07-30' and p.payment_date = r.rental_date and r.customer_id = c.customer_id and i.inventory_id = r.inventory_id
```
* перечислите узкие места;  
* оптимизируйте запрос: внесите корректировки по использованию операторов, при необходимости добавьте индексы.  
 
### Решение 2

Узким местом в запросе является то, что оконная функция обрабатывает таблицы, данные из которых в дальнейшем не используются (rental, inventory и film). Необходимые данные находятся в таблице payment и customer. В связи с этим запрос можно оптемезировать так:
  
```
SELECT CONCAT(c.last_name, ' ', c.first_name), SUM(p.amount) FROM customer c JOIN payment p ON p.customer_id =
c.customer_id WHERE p.payment_date >= '2005-07-30' AND p.payment_date < DATE_ADD('2005-07-30', INTERVAL 1 DAY) GROUP BY c.customer_id;
```
![Screenshot_433](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/7cb1f462-fbf5-48f9-a8e4-8e7e7cb510a7)  
