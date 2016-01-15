# Linux命令练习 #

学习记录Linux常见命令，按类别做笔记，方便自己备忘查看  

### 一、系统管理命令： 
 (1)chkconfig --list 		命令查看已设置的开启自启动列表。  
 (2)*/5 * * * * test.sh 	定时任务crontab的命令构成为   时间+动作，其时间有分、时、日、月、周五种  
 (3)& 						后台执行程序,用在一个命令的最后   
 (4)uname -a 显示系统信息,查看系统版本号的方法还有：cat /proc/version ,cat /etc/redhat-release, cat /etc/issue    
 (5)date  显示系统时间   
 (6)top  
 (7)kill   
 (8)skill   
 (9)exit   
 (10)who 显示当前在线连接的用户   
 (11)whoami 显示当前操作的用户   
 (12)whatis cmd  显示命令的简短描述
 (13)whereis cmd 显示命令位置
   
### 二、打包压缩相关命令：
 (1)gzip：
 (2)bzip2：
 (3)tar:             打包压缩   
     -c              归档文件   
     -x              压缩文件   
     -z              gzip压缩文件   
     -j              bzip2压缩文件   
     -v              显示压缩或解压缩过程 v(view)   
     -f              使用档名  
     例：  
     tar -cvf /home/abc.tar /home/abc                只打包，不压缩  
     tar -zcvf /home/abc.tar.gz /home/abc          打包，并用gzip压缩  
     tar -jcvf /home/abc.tar.bz2 /home/abc        打包，并用bzip2压缩  
     当然，如果想解压缩，就直接替换上面的命令  tar -cvf  / tar -zcvf  / tar -jcvf 中的“c” 换成“x” 就可以了。
     .tar
     解包：tar xvf FileName.tar  
     打包：tar cvf FileName.tar DirName  
     （注：tar是打包，不是压缩！）  
     ———————————————  
     .gz  
     解压1：gunzip FileName.gz  
     解压2：gzip -d FileName.gz  
     压缩：gzip FileName  

     .tar.gz 和 .tgz  
     解压：tar zxvf FileName.tar.gz  
     压缩：tar zcvf FileName.tar.gz DirName  
     ———————————————  
     .bz2  
     解压1：bzip2 -d FileName.bz2  
     解压2：bunzip2 FileName.bz2  
     压缩： bzip2 -z FileName  

     .tar.bz2  
     解压：tar jxvf FileName.tar.bz2  
     压缩：tar jcvf FileName.tar.bz2 DirName  
     ———————————————  
     .bz  
     解压1：bzip2 -d FileName.bz  
     解压2：bunzip2 FileName.bz  
     压缩：未知  

     .tar.bz  
     解压：tar jxvf FileName.tar.bz  
     压缩：未知  
     ———————————————  
     .Z  
     解压：uncompress FileName.Z   
     压缩：compress FileName   
     .tar.Z   

     解压：tar Zxvf FileName.tar.Z   
     压缩：tar Zcvf FileName.tar.Z DirName   
     ———————————————   
     .zip   
     解压：unzip FileName.zip   
     压缩：zip FileName.zip DirName   
     ———————————————   
     .rar   
     解压：rar x FileName.rar   
     压缩：rar a FileName.rar DirName   
     ———————————————   
     .lha   
     解压：lha -e FileName.lha   
     压缩：lha -a FileName.lha FileName   
     ———————————————   
     .rpm   
     解包：rpm2cpio FileName.rpm | cpio -div   
     ———————————————   
     .deb   
     解包：ar p FileName.deb data.tar.gz | tar zxf -  
     ———————————————    
     .tar .tgz .tar.gz .tar.Z .tar.bz .tar.bz2 .zip .cpio .rpm .deb .slp .arj .rar .ace .lha .lzh .lzx .lzs .arc .sda .sfx .lnx .zoo .cab .kar .cpt .pit .sit .sea
     解压：sEx x FileName.*  
     压缩：sEx a FileName.* FileName  
 
     sEx只是调用相关程序，本身并无压缩、解压功能，请注意！   

     gzip 命令
     减少文件大小有两个明显的好处，一是可以减少存储空间，二是通过网络传输文件时，可以减少传输的时间。gzip 是在 Linux 系统中经常使用的一个对文件进行压缩和解压缩的命令，既方便又好用。

     语法：gzip [选项]   压缩（解压缩）的文件名该命令的各选项含义如下：  

     -c 将输出写到标准输出上，并保留原有文件。  
     -d 将压缩文件解压。
     -l 对每个压缩文件，显示下列字段：     压缩文件的大小；未压缩文件的大小；压缩比；未压缩文件的名字
     -r 递归式地查找指定目录并压缩其中的所有文件或者是解压缩。  
     -t 测试，检查压缩文件是否完整。  
     -v 对每一个压缩和解压的文件，显示文件名和压缩比。  
     -num 用指定的数字 num 调整压缩的速度，-1 或 --fast 表示最快压缩方法（低压缩比），-9 或--best表示最慢压缩方法（高压缩比）。系统缺省值为 6。指令实例：
     gzip *% 把当前目录下的每个文件压缩成 .gz 文件。gzip -dv *% 把当前目录下每个压缩的文件解压，并列出详细的信息。gzip -l *% 详细显示例1中每个压缩的文件的信息，并不解压。gzip usr.tar% 压缩 tar 备份文件 usr.tar，此时压缩文件的扩展名为.tar.gz。

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
    sudo su(变更到root身份) 
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
    (1) ifconfig 可设置网络设备的状态，或是显示目前的设置  
        ifconfig eth0 down/up   关闭/启动指定网卡    
        ifconfig eth0 del 33ffe:3240:800:1005::2/ 64     为网卡删除IPv6地址  
        ifconfig eth0 del 33ffe:3240:800:1005::2/ 64     为网卡添加IPv6地址  
        ifconfig eth0 192.168.1.56  为eth0网卡配置IP地址      
        ifconfig eth0 192.168.1.56 netmask 255.255.255.0  为eth0网卡配置IP地址，并加上子网掩码  
        ifconfig eth0 192.168.1.56 netmask 255.255.255.0 broadcast 192.168.1.255 为etho网卡配置IP地址，加上子网掩码，加上广播地址          
        ifconfig eth0 arp/-arp   启动或关闭arp协议       
        ifconfig eth0 mtu 1500  设置能通过的最大数据包大小为 1500 bytes 
    (2) mesg y/n  在这个终端设置允许(不允许)发送消息    
        例子：mesg y  (在这个终端设置允许发送消息 ,且给root pts/4 用户发送了一个消息 
             write root pts/4 
             hello
             hello
             EOF //Ctrl+D 结束输入
    (3) write user [ttyname]  
        例子：write Rollaend   传讯息给 Rollaend，此时 Rollaend 只有一个连线
              write Rollaend pts/2  传讯息给 Rollaend，Rollaend 的连线有 pts/2，pts/3
    (4)ping www.baidu.com  ping主机

### 八、VIM命令：   
    (1) vim/vi file_name  编辑文件，没有则创建
    

### 九、磁盘维护： 
    (1)sync  sync命令用于数据同步,sync命令是在关闭Linux系统时使用的。Linux 系统中欲写入硬盘的资料有的时候会了效率起见，会写到 filesystem buffer 中，这个 buffer 是一块记忆体空间，如果欲写入硬盘的资料存于此 buffer 中，而系统又突然断电的话，那么资料就会流失了，sync 指令会将存于 buffer 中的资料强制写入硬盘中     
    (2) du 显示文件大小  
    (3) df 显示磁盘的文件系统与使用率  
    (4)
    (5)

### 10、设备管理：


### 11、登录：
    (1) ssh -p port user@host ssh登录用户
    (2) scp
    (3) sftp
    (4)
    (5) 

# Shell脚本 #
