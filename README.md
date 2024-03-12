# Домашнее задание к занятию 1 «Disaster recovery и Keepalived» - "Андреев Сергей"


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
[Ссылка](https://github.com/SergeiViktorovich/gitlab-hw/blob/main/hsrp_advanced_asv.pkt) на файл.  
#### Router1  
![router1](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/7bd96001-840e-422a-add8-7338757ce3bf)  
#### Router2  
![router2](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/3b8a65aa-39ba-4b3d-b3c9-c58450029189)  
---

### Задание 2
[Keepalived](https://github.com/SergeiViktorovich/gitlab-hw/blob/main/keepalived.conf) конфиг keepalived  
[Скрипт](https://github.com/SergeiViktorovich/gitlab-hw/blob/main/check-port.sh) bash скрипт  
#### Все работает штатно
![Screenshot_346](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/66f93126-deb5-4a0b-8165-12bedd4792a1)  
#### Отключил NGINX на 192.168.1.182
![Screenshot_347](https://github.com/SergeiViktorovich/gitlab-hw/assets/143599204/65ffd22a-d5b0-41bc-9fa8-2dc6748b2c63)  
