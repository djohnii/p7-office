
# r7-office
deploy r7-office with ansible ( Redos 7.3.3, Centos 7)
# Описание
Скрипт для установки r7-office используя ansible.
# Требования
OS: Centos7 or Redos 7.3.3
Python version 3.*
Хараеткиристики хоста CS :
Оперативная память: 12GB+
Размер свободного пространства: 40gb+
# Перед тем как запустить
Для запуска скрипта необходимо заполнить переменные которые находятся в inventory/group_vars/all/main.yml и inventory/hosts
## inventory/hosts 
 ```
[cs]
cs_1 ansible_host=<IP> ansible_port=<ssh_port> ansible_user=<ssh_user>
[ds]
ds_node ansible_host=<IP> ansible_port=<ssh_port> ansible_user=<ssh_user>
[master_db]
master_node ansible_host=<IP> ansible_port=<ssh_port> ansible_user=<ssh_user>
[slave_db]
slave_node ansible_host=<IP> ansible_port=<ssh_port> ansible_user=<ssh_user>
```
- cs_1 : хост, на котором будет установлен коммунити сервер
- ds_node : хост, на котором будет установлен документ сервер
- master_node : хост, на котором будет установлена база данных mysql master
- slave_node :  хост, на котором будет установлена база данных mysql svale

  ## inventory/group_vars/all/main.yml
```
cs: "{{ hostvars[groups['cs'][0]].ansible_host }}" 
ds: "{{ hostvars[groups['ds'][0]].ansible_host }}"  
ms: "{{ hostvars[groups['slave_db'][0]].ansible_host }}" 
mm: "{{ hostvars[groups['master_db'][0]].ansible_host }}"
mysql_root_db_pass: <DB_password>
mysql_repl_user:
  - name: <repl_user>
    pass: <repl_password>
    host: <repl_host>
mysql_cs_repl:
  - name: <cs_user>
    pass: <cs_repl>
    priv: "*.*:ALL"
    host: <cs_host>
```

## Лицензия для Документ сервера
если у вас есть лицензия для документ сервера, ее необходимо переместить в папку roles/ds/templates/license.lic
