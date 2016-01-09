# Linux命令练习 #

学习记录Linux常见命令，按类别做笔记，方便自己备忘查看  

### 一、系统管理命令： 
 (1)chkconfig --list 		命令查看已设置的开启自启动列表。  
 (2)*/5 * * * * test.sh 	定时任务crontab的命令构成为   时间+动作，其时间有分、时、日、月、周五种  
 (3)& 						后台执行程序,用在一个命令的最后
 (4)uname -a 显示系统信息,查看系统版本号的方法还有：cat /proc/version ,cat /etc/redhat-release, cat /etc/issue
   
### 二、打包压缩相关命令：
 gzip：
 bzip2：
 tar:                打包压缩
     -c              归档文件
     -x              压缩文件
     -z              gzip压缩文件
     -j              bzip2压缩文件
     -v              显示压缩或解压缩过程 v(view)
     -f              使用档名
 例：
 tar -cvf /home/abc.tar /home/abc              只打包，不压缩
 tar -zcvf /home/abc.tar.gz /home/abc        打包，并用gzip压缩
 tar -jcvf /home/abc.tar.bz2 /home/abc      打包，并用bzip2压缩
 当然，如果想解压缩，就直接替换上面的命令  tar -cvf  / tar -zcvf  / tar -jcvf 中的“c” 换成“x” 就可以了。

### 三、关机重启命令：
 (1)shutdown -h now 立刻关闭系统不重启(1)    
 (2)init 0 关闭系统(2)    
 (3)telinit 0 关闭系统(3)      
 (4)shutdown -h hours:minutes & 按预定时间关闭系统          
 (5)shutdown -c 取消按预定时间关闭系统        
 (6)shutdown -r now 重启(1)      
 (7)reboot 重启(2)     
 (8)logout 注销     

### 四、用户管理命令：
 (1)useradd username 建立用户帐号    
 (2)userdel username 删除用户帐号   
 (3)su 变更用户身份
    su root(变更到root身份)
    su - root (变更到root身份)   
 (4)sudo 以其他身份来执行命令   
 (5)groupadd groupname 建立组   
 (6)groupdel groupname 删除组   
 (7)who 查看当前连接服务器的用户信息 
 (8)whoami 查看当前操作的用户  
 (8)skill -KILL -v conn_name 去除用户登录进程   
 (9)chown 更改文件或目录的拥有者或所属组 chown [选项] [所有者][:[组]] 文件; chown mail:mail log2012.log  
 (10) /etc/passwd    存储用户账号  
 (11)/etc/group       存储组账号  
 (12)/etc/shadow    存储用户账号的密码  
 (13)/etc/gshadow  存储用户组账号的密码  
 (14)passwd root     给root设置密码    
 (15)/etc/profile     系统环境变量  
 (16)bash_profile     用户环境变量  
 (17).bashrc              用户环境变量  
 (18)su user              切换用户，加载配置文件.bashrc  
 (19)su - user            切换用户，加载配置文件/etc/profile ，加载bash_profile  
 (20)sudo chown [-R] owner[:group] {File|Directory}    更改文件的用户及用户组
 例如：还以jdk-7u21-linux-i586.tar.gz为例。属于用户hadoop，组hadoop
 要想切换此文件所属的用户及组。可以使用命令。
 sudo chown root:root jdk-7u21-linux-i586.tar.gz

### 五、文件管理命令： 

 (1)ls 查看当前目录下的文件信息  
 (2)ll 详细查看当前目录下文件信息   
    (-rw-r--r-- 1 rayjoy sagroup 0 Jan  8 21:36 a.php)  
    理解：这是一个文件，不是个目录(如果第一个不是杠，而是个d则代表这是个目录)；  
         rayjoy拥有者对它可读可写；  
         它的属组sagroup对它只可读；  
         其他人对它也是只可读；  
         这个文件有0个字节；创建时间，文件名字  
 (3)pwd 命令来查看”当前工作目录“的完整路径  
 (4)cd 用来进入某一个目录  
 (5)mkdir dir_name 创建目录   
 (6)rmdir dir_name 删除目录    
 (7)touch file_name 新建文件     
 (8)vi/vim file_name 编辑文件（没有该文件就新建该文件）  
    "i":进入编辑状态  
    "esc":进入命令行模式  
    ":w":保存，但仍然在写文件的界面  
    ":wq":保存并退出到命令行模式  
    "ll":清除全部  
 (9)cp source_path target_path 拷贝文件/目录到指定位置    
 (10)mv source_path target_path 移动文件/目录到指定位置     
 (11)rm -rf dir_name/file_name  删除文件/目录     
 (12)cat file_name 查看文件信息     
 (13)chmod xxx file_name 更改文件/目录系统权限  
     xxx:分别代表拥有者，属组，其他人的权限值(r:4;w:2;x:1)  
     例如：763:拥有者(4+2+1);属组(4+2);其他人(2+1)  
 (14)diff file_a file_b 比对文件file_a与file_b的差异     
 (15)tail -f file_name 假如另外一个进程在写log到file_name中，而你用tail，就可以实时的打印出新的内容  
     按ctrl+c:即可退回到正常的命令行模式  
 (16)find path -name 'file_name' 在path下查找有file_name的文件/目录   
 (17)wc -lwc file_name 统计file_name的行数，字数，字节数   
 (18)ls | wc -l 统计当前文件夹下的文件个数  

### 六、权限管理命令：
chmod xxx file_name 更改文件/目录系统权限      
chown 更改文件或目录的拥有者或所属组 chown [选项] [所有者][:[组]] 文件; chown mail:mail log2012.log        

### 七、网络通信命令：   

### 八、VIM命令：   
