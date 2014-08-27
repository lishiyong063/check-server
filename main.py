#coding:utf8
import MySQLdb,os,runinfo,time,logsystem,sys
ini_li=['check server statu','see the logsystem']
while True:
    for k,y in enumerate(ini_li):
        print k+1,y
    ini_o=raw_input("choose an option:")
    if ini_o=='1':
        try:
          while True:
            a=runinfo.disk_info()#接受返回的值
            if a=="warning":
                raw_input("\033[5;35;10mcheck disk warning 请尽快解决.\033[0m")
            b=runinfo.memory_info()
            if b=="warning":
                raw_input("\033[5;35;10mcheck memory warning 请尽快解决.\033[0m")
            c=runinfo.cpu_info()
            if c=="warning":
                raw_input("\033[5;35;10mcheck cpu warning 请尽快解决.\033[0m")
            print "\033[5;35;10m30秒后重新检查,期间你可以Ctrl+C,返回主界面.Ctrl+Z退出程序.\033[0m"
            for i in xrange(100):
                percent = i
                print 'The progress of:' + str(percent) + '%',
                sys.stdout.write("\r")
                sys.stdout.flush()
                time.sleep(0.3)
        except:
         print "\033[5;35;10m你可以Ctrl+Z退出程序\033[0m"
    elif ini_o=='2':
        while True:
            op_li=['CPU','Memory','Disk','USER','Exit']
            for k,v in enumerate(op_li):
                print k+1,v
            opr_what=raw_input("Do you want to see which information:")#传值到logsystem 格式化输出
            if opr_what=='1':
                logsystem.prety('cpuinfo',['id','用户使用资源%','系统使用资源%','剩余资源%','ip','statu','time'])
            elif opr_what=='2':
                logsystem.prety('memoryinfo',['id','ip','time','statu','total','used','buffers','cached','free'])
            elif opr_what=='3':
                logsystem.prety('diskinfo',['id','filesystem','type','size','used','avil','statu','ip','time'])
            elif opr_what=='4':
                logsystem.prety('userinfo',['id','username','uid','gid','login'])
            elif opr_what=='5':
                print "exit"
                sys.exit()
            else:
                print "\033[5;35;10m你只能选择1-4,请重新输入.\033[0m"
                continue
    else:
        print "\033[5;35;10m你只能选择1-2,请重新输入.\033[0m"
