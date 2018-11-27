#coding=utf-8
import sys
import MySQLdb
import os
import re
import uuid
import platform
from datetime import  datetime
from leotool.readexcel import readexcel_todict



reload(sys)
sys.setdefaultencoding('utf-8')
dataname = "leodb"
host='127.0.0.1'
def updata_watch_todb(nums,error_for):
    conn= MySQLdb.connect(
        host= host,
        port = 3306,
        user='root',
        passwd='7monthdleo',
        db = dataname ,
        charset='utf8'
    )
    cur = conn.cursor()
    sql_str = 'select * from  watcher where id="%s"'%nums
    names = cur.execute(sql_str)


    info = cur.fetchmany(names)
    if info:
        temp_tuple = info[0]
        dt = datetime.now()
        time = dt.strftime( '%Y-%m-%d %H:%M:%S' )
        # (uuid.uuid1(),temp_tuple[0],time,time,"123456","0","0","0")
        sql_str = '''insert into wterror(id,watcher_id,creat_time,updata_time,work_for,erro_type,log_type,del_type)values("%s","%s","%s","%s","%s","%s","%s","%s")'''%(uuid.uuid1(),temp_tuple[0],time,time,error_for,"0","0","0")
        print sql_str
        names = cur.execute(sql_str)
        print names
    conn.commit()
    conn.close()

if __name__ == "__main__":
    updata_watch_todb("af_292C","1231232fsf")
