#!/bin/bash

if condition
then
    command1 
    command2
    ...
    commandN 
fi


if condition
then
    command1 
    command2
    ...
    commandN
else
    command
fi



if condition1
then
    command1
elif condition2 
then 
    command2
else
    commandN
fi


a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi


num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
    echo '两个数字相等!'
else
    echo '两个数字不相等!'
fi


for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done


for str in 'This is a string'
do
    echo $str
done

# 输出：
# This is a string


while condition
do
    command
done


int=1
while(( $int<=5 ))
do
        echo $int
        let "int++"
done


#读取键盘信息
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的电影名: '
while read FILM
do
    echo "是的！$FILM 是一部好电影"
done

# 按下 <CTRL-D> 退出
# 输入你最喜欢的电影名: w3cschool菜鸟教程
# 是的！w3cschool菜鸟教程 是一部好电影


#无限循环语法格式
while :
do
    command
done

或者
while true
do
    command
done

或者
for (( ; ; ))



int=1
while(( $int<=5 ))
do
        echo $int
        let "int++"
done


case 值 in
模式1)
    command1
    command2
    ...
    commandN
    ;;
模式2）
    command1
    command2
    ...
    commandN
    ;;
esac


echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac




