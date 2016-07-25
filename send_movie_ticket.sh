
#送观影券策略  每天凌晨8点   .运行下面的命令
0  8  * * * cd  /data/www/bmsadmin/;/usr/local/bin/php index.php Crontab/SendMovieTicket/sendTicket

#运行下面的命令，修改utime
cd  /data/www/bmsadmin/;/usr/local/bin/php index.php  Crontab/SendMovieTicket/updateMemberUtime