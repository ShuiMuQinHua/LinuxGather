#!/bin/bash

#1.输出普通字符串
echo "it is a test"
#输出 it is a test

#2.输出转义字符
echo "\"it is a test\""
#输出 "it is a test"

#3.显示变量
read name 
echo "$name It is a test"
# [root@www ~]# sh test.sh
# OK                     #标准输入
# OK It is a test        #输出


#4.显示换行
echo -e "OK! \n" # -e 开启转义
echo "It it a test"
# 输出结果
# OK!

# It it a test


#5.显示不换行
echo -e "OK! \c" # -e 开启转义 \c 不换行
echo "It is a test"
# 输出结果
# OK! It is a test

#6.显示结果定向到文件
echo "It is a test" > myfile

#7.原样输出字符串，不进行转义或者取变量(用单引号)
echo '$name\"'
# 输出结果
# $name\"

#8.显示命令执行结果
echo `date`
# 输出结果
# Thu Jul 24 10:08:46 CST 2014




