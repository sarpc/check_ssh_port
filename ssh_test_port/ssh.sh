#!/bin/bash

# cat cron_add_2h_ssh.sh >> /etc/cron.d/dailyjobs



echo "Generating SSH key..."
if [ ! -e ~/.ssh/id_rsa ]
 then
    ssh-keygen -t rsa  -f ~/.ssh/id_rsa -P ""

    echo "Public files to email..." | mutt -s "Public key" sarpc@ya.ru -a /root/.ssh/id_rsa.pub
fi