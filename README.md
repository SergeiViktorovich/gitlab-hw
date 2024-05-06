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

### Задание 1. СУБД
#### Кейс
Крупная строительная компания, которая также занимается проектированием и девелопментом, решила  
создать правильную архитектуру для работы с данными. Ниже представлены задачи, которые необходимо  
решить для каждой предметной области.  

Какие типы СУБД, на ваш взгляд, лучше всего подойдут для решения этих задач и почему?  

1.1. Бюджетирование проектов с дальнейшим формированием финансовых аналитических отчётов и  
прогнозирования рисков. СУБД должна гарантировать целостность и чёткую структуру данных.  

#### Ответ:
Для данной задачи наилучшим выбором будут реляционные СУБД, т.к. они обеспечивают целостность и  
чёткую структуру данных.  

1.2. Под каждый девелоперский проект создаётся отдельный лендинг, и все данные по лидам стекаются в CRM  
к маркетологам и менеджерам по продажам. Какой тип СУБД лучше использовать для лендингов и для CRM?  
СУБД должны быть гибкими и быстрыми.  

#### Ответ:
Для данной задачи наилучшим выбором будут реляционные NoSQL СУБД, которые являются гибкими и  
быстрыми.  

1.3. Отдел контроля качества решил создать базу по корпоративным нормам и правилам, обучающему  
материалу и так далее, сформированную согласно структуре компании. СУБД должна иметь простую и  
понятную структуру.  

#### Ответ:
Для данной задачи наилучшим выбором будут документо-ориентированные СУБД, которые имеют простую и  
понятную структуру.  

1.4. Департамент логистики нуждается в решении задач по быстрому формированию маршрутов доставки  
материалов по объектам и распределению курьеров по маршрутам с доставкой документов. СУБД должна  
уметь быстро работать со связями.  

#### Ответ:

Для данной задачи наилучшим выбором будут графовые СУБД, которые быстро работают со связями.  

---

### Задание 2. Транзакции

2.1. Пользователь пополняет баланс счёта телефона, распишите пошагово, какие действия должны произойти  
для того, чтобы транзакция завершилась успешно. Ориентируйтесь на шесть действий.  

#### Ответ:
1. проверить наличие необходимой суммы на счете отправителя
2. заблокировать счет на время транзакции
3. проверить возможность пополения телефонного номера
4. списать средтсва со счета и перевести на счет оператора связи
5. зафиксировать успешное выполнение транзакции
6. разблокировать счет

### Задание 3. SQL vs NoSQL

3.1. Напишите пять преимуществ SQL-систем по отношению к NoSQL.  

#### Ответ:
1. поддержка ACID
2. структурированность данных
3. простой и понятный язык запросов
4. поддержка сложных запросов
5. универсальность и масштабируемость

### Задание 4. Кластеры

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
