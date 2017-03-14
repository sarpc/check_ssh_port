#!/bin/bash
# В Cron проверка каждые два часа
cat cron_add_2h_ssh.sh >> /etc/cron.d/dailyjobs


# Генерация ключей
echo "Generating SSH key..."
if [ ! -e ~/.ssh/id_rsa ]
 then
    ssh-keygen -t rsa  -f ~/.ssh/id_rsa -P ""
# Отправка на emai публичного ключа.
    echo "Public files to email..." | mutt -s "Public key" sarpc@ya.ru -a /root/.ssh/id_rsa.pub
fi
