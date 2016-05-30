#!/bin/bash

my_array=(A B "C" D)

#获取数组中的元素
echo "第一个元素为: ${my_array[0]}"
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"

# 输出：
# 第一个元素为: A
# 第二个元素为: B
# 第三个元素为: C
# 第四个元素为: D

#获取数组中的所有的元素
echo "数组的元素为: ${my_array[*]}"
echo "数组的元素为: ${my_array[@]}"
#输出
# 数组的元素为: A B C D
# 数组的元素为: A B C D

#获取数组的长度
echo "数组元素个数为: ${#my_array[*]}"
echo "数组元素个数为: ${#my_array[@]}"
#输出
# 数组元素个数为: 4
# 数组元素个数为: 4



