#!/bin/bash

##############################
#检测Rpm安装方式Apache关闭脚本路径
##############################
updatedb

ENV_PATH=../env_config

LINE_NUM=`grep  -n  "Rpm_Stop_Cmd"   $ENV_PATH  |  awk -F:  '{print $1}'`

#在"Apache_Rpm_Stop_Cmd"行之后添加一行

sed  -ie  "/Apache_Rpm_Stop_Cmd/a \'Apache_Rpm_Stop_Cmd\':\'"service httpd stop"\'" $ENV_PATH

#删除原来的"Apache_Rpm_Stop_Cmd"行

sed -i  ''$LINE_NUM'd'   $ENV_PATH






