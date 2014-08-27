#coding:utf8
import runinfo
import MySQLdb,os,time
import socket
import fcntl
import struct
from prettytable import PrettyTable
def prety(table,list_custom):#表，表字段，value格式
    c =conn.query(table,'*') 
    x = PrettyTable(list_custom)
    for a in c:
        i=list(a)
        q=for_list(i)
        x.add_row(q)
    print x

def for_list(what_list):#value格式 list
    in_i=''
    new_list=[]
    for for_q in what_list:
        if isinstance(for_q,str):#将时间戳转换成通常格式时间
            if len(for_q)==10 and for_q.isdigit():
                x = time.localtime(int(for_q))
                a= time.strftime('%Y/%m/%d %H:%M:%S',x)
                new_list.append(a)
            else:   
                new_list.append(for_q)
        else:
            new_list.append(int(for_q))
    return new_list        

conn=runinfo.Mysql('localhost','loguser','123.com','logsystem') #新建一个对象供函数使用
