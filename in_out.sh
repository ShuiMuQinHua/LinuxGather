#!/bin/bash


#shell的输入/输出重定向
命令 				说明
command > file 		将输出重定向到 file。
command < file 		将输入重定向到 file。
command >> file 	将输出以追加的方式重定向到 file。
n > file 			将文件描述符为 n 的文件重定向到 file。
n >> file 			将文件描述符为 n 的文件以追加的方式重定向到 file。
n >& m 				将输出文件 m 和 n 合并。
n <& m 				将输入文件 m 和 n 合并。
<< tag 				将开始标记 tag 和结束标记 tag 之间的内容作为输入。
# 需要注意的是文件描述符 ：
# 0 通常是标准输入（STDIN），
# 1 是标准输出（STDOUT），
# 2 是标准错误输出（STDERR）。


