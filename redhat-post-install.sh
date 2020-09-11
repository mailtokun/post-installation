#!/bin/sh
timedatectl set-timezone America/New_York
yum install ntp -y
ntpdate time.service.softlayer.com
chkconfig ntpdate on
service ntpd restart
chkconfig ntpd on