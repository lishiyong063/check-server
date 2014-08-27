1,第一次运行的时候使用root身份，导入库 python creatsql.py root passwd(注意：root 是指本机数据库root用户，passwd是指本机root用户的密码)

2.导入成功后会提示：数据库导入成功 ，导入失败的话会提示 导入数据库失败


3.数据库导入成功后  运行主程序 python main.py

  #main.py 包括两个模块 runinfo.py logsystem.py
    # runinfo.py 检查本机的基本转台写入数据库，logsystem.py 查询数据库的信息，并格式化输出

4.进入后两个选项：a check server statu
		  b see the logsystem


		  第一个检查本机状态30秒一次有时间进度条 到了100%第二次检查。
		  第二个查看历史状态CPU DISK Memory 以及用户信息
