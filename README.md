# btpanel-v7.7.0
btpanel-v7.7.0-backup  官方原版v7.7.0版本面板备份

**Centos/Ubuntu/Debian安装命令 独立运行环境（py3.7）**

```Bash
curl -sSO https://raw.githubusercontent.com/Yoooum/btpanel-v7.7.0/main/install/install_panel.sh && bash install_panel.sh
```

**自定义修改部分（可选）**

去除广告、页脚显示  
修改面板未登录且未正确输入安全入口时的页面显示  
解锁插件商店，部分插件不可用  

```bash
curl -sSO https://raw.githubusercontent.com/Yoooum/btpanel-v7.7.0/main/modify/run.sh && bash run.sh
```

屏蔽强制绑定手机

```bash
# 屏蔽
sed -i "s|bind_user == 'True'|bind_user == 'XXXX'|" /www/server/panel/BTPanel/static/js/index.js

# 恢复
sed -i "s|if (bind_user == 'REMOVED') {|if (bind_user == 'True') {|g" /www/server/panel/BTPanel/static/js/index.js
```

移除强制绑定手机文件

```bash
# 移除
mv /www/server/panel/data/bind.pl /www/server/panel/data/bind.bak.pl

# 恢复
mv /www/server/panel/data/bind.bak.pl /www/server/panel/data/bind.pl
```

