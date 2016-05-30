#!/bin/bash

-eq 	等于则为真
-ne 	不等于则为真
-gt 	大于则为真
-ge 	大于等于则为真
-lt 	小于则为真
-le 	小于等于则为真

num1=100
num2=100
if test $[num1] -eq $[num2]
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi

num1="runoob"
num2="runoob"
if test num1=num2
then
    echo '两个字符串相等!'
else
    echo '两个字符串不相等!'
fi


-e 文件名 	如果文件存在则为真
-r 文件名 	如果文件存在且可读则为真
-w 文件名 	如果文件存在且可写则为真
-x 文件名 	如果文件存在且可执行则为真
-s 文件名 	如果文件存在且至少有一个字符则为真
-d 文件名 	如果文件存在且为目录则为真
-f 文件名 	如果文件存在且为普通文件则为真
-c 文件名 	如果文件存在且为字符型特殊文件则为真
-b 文件名 	如果文件存在且为块特殊文件则为真


cd /bin
if test -e ./bash
then
    echo '文件已存在!'
else
    echo '文件不存在!'
fi


Shell还提供了与( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，其优先级为："!"最高，"-a"次之，"-o"最低

cd /bin
if test -e ./notFile -o -e ./bash
then
    echo '有一个文件存在!'
else
    echo '两个文件都不存在'
fi

