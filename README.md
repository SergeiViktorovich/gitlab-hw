# Домашнее задание к занятию «Защита сети» - Андреев Сергей


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

Проведите разведку системы и определите, какие сетевые службы запущены на защищаемой системе:  

**sudo nmap -sA < ip-адрес >**  
**sudo nmap -sT < ip-адрес >**  
**sudo nmap -sS < ip-адрес >**  
**sudo nmap -sV < ip-адрес >**  

*В качестве ответа пришлите события, которые попали в логи Suricata и Fail2Ban, прокомментируйте результат.*  

### Решение 1

Скрин Suricata:  
![Screenshot_454](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/01f4bc95-9920-47a5-91e1-bb9e81b8073b)  
Suricata обнаружила, -sT, -sS и -sV сканирования.  
-sA небыл зафиксирован. Он используется для определения фильтрации и выполняется без установления соединения.  
Скрин Fail2Ban:  

### Задание 2

Проведите атаку на подбор пароля для службы SSH:  

**hydra -L users.txt -P pass.txt < ip-адрес > ssh**  

1. Настройка hydra:  
*создайте два файла: users.txt и pass.txt;  
* в каждой строчке первого файла должны быть имена пользователей, второго — пароли. В нашем случае это могут быть случайные строки, но ради эксперимента можете добавить имя и пароль существующего пользователя.

2. Включение защиты SSH для Fail2Ban:  
*открыть файл /etc/fail2ban/jail.conf,  
* найти секцию **ssh**,  
* установить **enabled** в **true**.  

*В качестве ответа пришлите события, которые попали в логи Suricata и Fail2Ban, прокомментируйте результат.*  
 
### Решение 2

  
  
  

