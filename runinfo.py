#coding:utf8 
import MySQLdb,os,time
import socket
import fcntl
import struct
from prettytable import PrettyTable
def get_ip_address(ifname):#获取本机ip地址
    skt = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    pktString = fcntl.ioctl(skt.fileno(), 0x8915, struct.pack('256s', ifname[:15]))
    ipString  = socket.inet_ntoa(pktString[20:24])
    return ipString
class Mysql:#操作数据库的类更删改查
    def __init__(self,host,user,passwd,db):
        self.host=host
        self.user=user
        self.passwd=passwd
        self.db=db
        try:
          self.conn=MySQLdb.connect(host=self.host,user=self.user,passwd=self.passwd,db=self.db,port=3306)
          self.cur=self.conn.cursor()
        except:
          print "数据库连接错误."
    def query(self,tables,where):#查询的方法
        self.tables=tables
        self.where=where
        self.cur.execute('select %s from %s'%(self.where,self.tables))
        return self.cur.fetchall()
    def insert(self,tables,value):
        self.tables=tables
        self.value=value
        self.cur.execute('insert into %s values%s'%(self.tables,self.value))
    def new_insert(self,table,where,value):#插入的方法
        self.where=where
        self.table=table
        self.value=value
        sql='insert into %s(%s) values%s'%(self.table,self.where,self.value)
        self.cur.execute(sql)
        print '%s:insert to mysql %s ok'%(time.strftime('%Y/%m/%d-%H:%M:%S'),self.table.ljust(5))+'\n'
        self.conn.commit()      
    def show(self):
        return self.cur.fetchall()
    def __del__(self):
        self.conn.commit()      
        self.cur.close()
        self.conn.close()
con=Mysql('localhost','loguser','123.com','logsystem')#连接数据库
ip=get_ip_address('eth0')
def cpu_info():#check cpu 将shell的命令写到文件中取出需要的值通过调用对象写入数据库
    os.system('vmstat > tt.txt')
    line=[]
    with_open(line,2)
    c_list=line[12:]
    cpu_statu=''
    if int(c_list[0])>=80:
        cpu_statu='warning'
    else:
        cpu_statu='ok'
    c_time=int(time.time())     
    con.new_insert('cpuinfo','us,sy,id,ip,statu,time',(c_list[0],c_list[1],c_list[2],ip,cpu_statu,str(c_time)))
    return cpu_statu

def memory_info():#check memory
    mem_li=[]#内存的信息
    mem_li1=[]#实际使用
    os.system('free > tt.txt')
    with_open(mem_li,1)
    with_open(mem_li1,2)
    mem_statu=''
    if float(mem_li1[2])/float(mem_li[1])>=0.9:
        mem_statu='warning'
    else:
        mem_statu='ok'
    con.new_insert('memoryinfo','ip,time,statu,total,used,buffers,cached,free',\
    (ip,str(int(time.time())),mem_statu,mem_li[1],mem_li[2],mem_li[5],mem_li[6],mem_li[3]))
    return mem_statu           

def disk_info():#check disk
    os.system('df -Th > tt.txt')
    disk_l=[]
    with_open(disk_l,1)
    disk_s=''
    if int(disk_l[5].replace('%',''))>95:
        disk_s='warning'
    else:
        disk_s='ok'
    con.new_insert('diskinfo','filesystem,type,size,used,avil,statu,ip,time',\
    (disk_l[0],disk_l[1],disk_l[2],disk_l[3],disk_l[4],disk_s,ip,str(int(time.time()))))
    return disk_s
def with_open(list_li,line):#打开文件
    with open('tt.txt') as f:
      for i in f.readlines()[line].strip().split():
        list_li.append(i)


def user_info():#获取用户
  pri = 1
  with open ('/etc/passwd') as f:
    for i in f.readlines():
        line=i.strip().split(':')
    if line[6]=='/bin/bash':
        line[6]=True
    else:
        line[6]=False
    con.new_insert('userinfo',(pri,line[0],int(line[2]),int(line[3]),line[6]))
    pri += 1

