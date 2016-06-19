#!/bin/bash

sed -i "s/MBSERVERADDRESS/$MBSERVERADDRESS/g" /root/.fetchmailrc
sed -i "s/MBUSERNAME/$MBUSERNAME/g" /root/.fetchmailrc
sed -i "s/MBPASSWORD/$MBPASSWORD/g" /root/.fetchmailrc

# RUN CRON in foreground
/usr/sbin/crond -f -l 10
