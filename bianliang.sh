#!/bin/bash
str1="test"
echo ${str1};


str2="test"
readonly str2
str2="123"
echo ${str2};  # 对只读的变量进行重新赋值  会报错


str3="test"
unset str3     #用unset删除一个变量，下面一句会报错
echo ${str3}; 


# 运行shell脚本时会同时存在3种变量  
# 局部变量，
# 环境变量，
# shell变量

#shell字符串  单，双引号的使用和php差不多。  还有一点就是双引号中可以有变量，可以用转义字符
your_name='qinjx'
str="Hello, I know your are \"$your_name\"! \n"
echo ${str};   #输出为：Hello, I know your are "qinjx"! 


#字符串拼接
your_name="qinjx"
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1   #输出结果为：hello, qinjx ! hello, qinjx !


#获取字符串的长度
str='abcd'
echo ${#str};    #输出结果为4


#提取子字符串
str='i love you ,baby!' 
echo ${str:1:4};  #从下标为1的地方开始，截取4个长度，并返回截取的字符串

#查找子字符串。查找字符串i或s的位置
string="runoob is a great company"    
echo `expr index "${string}" is`   # 输出8  注意两边是反引号 `  而不是 ' 哦


#shell数组，bash支持一维数组，不支持多维数组
arr_test=(v1 v2 v3 v4 v5 v6);
echo ${arr_test[0]};          #输出v1


# 如果在开发过程中，遇到大段的代码需要临时注释起来，过一会儿又取消注释，怎么办呢？
# 每一行加个#符号太费力了，可以把这一段要注释的代码用一对花括号括起来，定义成一个函数，
# 没有地方调用这个函数，这块代码就不会执行，达到了和注释一样的效果















