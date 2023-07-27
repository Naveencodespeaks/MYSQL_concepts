import mysql.connector as conn
mydb = conn.connect(host= 'localhost', user= 'root', password= 'Harekrishna@123')
cursor = mydb.cursor()
#cursor.execute('show databases')
#print(cursor.fetchall())



#cursor.execute('create database  Balaram')
#cursor.execute('show databases')
#s = "create table balaram.balaramdetails(name varchar(30), surname varchar(30), emailid varchar(30), phone_number int(10), location varchar(30))"
s = "insert into balaram.balaramdetails('balaram', 'Ram', 'balaram@gmail.com', 1234567891, 'Hyderabad')"
cursor.execute(s)
#mydb.commit()
#cursor.execute(s)

#s1 = "create table balaram.balaramfamily(name_of_family varchar(30), surname varchar(30), location varchar(30), phone_no int(10))"
#cursor.execute(s1)

"""cursor.execute("select * from balaram.balaramdetails")
for i in cursor.fetchall():
    print(i)"""