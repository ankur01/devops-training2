#!/bin/bash

groupadd -g $GID irisgroup
useradd -u $UID -g $GID -ms /bin/bash $USER

usermod -a -G irisgroup $USER

chown -R $USER:irisgroup /usr/local/tomcat

chown -R $USER:$irisgroup /home/$USER

chown -R 755 /home/$USER
