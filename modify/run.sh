#!/bin/bash

if [ $(whoami) != "root" ];then
	echo "请使用root权限执行替换命令"
	exit 1;
fi

get_modify_url='https://raw.githubusercontent.com/Yoooum/btpanel-v7.7.0/main/modify'

mkdir -p /www/backup/modify
modify_path='/www/backup/modify'

wget -O $modify_path/autherr.html $get_modify_url/autherr.html -T 10
wget -O $modify_path/index.html $get_modify_url/index.html -T 10
wget -O $modify_path/layout.html $get_modify_url/layout.html -T 10
wget -O $modify_path/login.html $get_modify_url/login.html -T 10
wget -O $modify_path/panelPlugin.py $get_modify_url/panelPlugin.py -T 10
wget -O $modify_path/soft.html $get_modify_url/soft.html -T 10

cp -r $modify_path/panelPlugin.py /www/server/panel/class/
cp -r $modify_path/*.html /www/server/panel/BTPanel/templates/default/

echo "文件替换完成"
rm -r /www/backup/modify

bt 9
bt 1
