#!/bin/sh
NOWDAY=`date +%Y-%m-%d`
DAYPATH="/mysql_bak/${NOWDAY}"
FILE_NAME=`date +%Y-%m-%d-%T |awk -F":" '{print $1}'`
TIME=`date | awk '{print $4}' | awk -F ":" '{print $1}'`
if [ -d $DAYPATH ]
       then
                echo exists
        else
                mkdir -p $DAYPATH
        fi

        /usr/local/mysql/bin/mysqldump cms >${DAYPATH}/$FILE_NAME.sql
if  [ ${TIME} -eq 17 ];then
          tar -zcvf  $NOWDAY.tar.gz /mysql_bak/${NOWDAY}
           mv $NOWDAY.tar.gz /mysql_bak/
fi

if  [ ${TIME}  -eq 18 ];then
          rm -rf $DAYPATH
fi

OLD=`date -d "-1week" +%Y-%m-%d`
rm -f /mysql_bak/${OLD}.tar.gz