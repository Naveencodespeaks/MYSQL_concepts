import mysql.connector as connection
mydb = connection.connect(host= "localhost", user = "root", passwd = "Harekrishna@123")
print(mydb)
cursor = mydb.cursor()
# s = "create table ajio.ajiodetails(ajio_id int(50),ajio_name varchar(50), ajio_salary int(10))"
# cursor.execute(s)

#cursor.execute('select * from ajio.ajiodetails')
# print(cursor.fetchall())
cursor.execute("insert into ajio.ajiodetails values(12345, 'ajioname2', 1234556)")
cursor.execute("insert into ajio.ajiodetails values(343434, 'ajioname3',3454324)")
cursor.execute("insert into ajio.ajiodetails values(3222543,'ajioname4',2342443)")
cursor.execute("insert into ajio.ajiodetails values(5453553, 'ajioname5',434432)")
cursor.execute("insert into ajio.ajiodetails values(233423,'ajioname6',34552412)")
mydb.commit()
cursor.execute("select * from ajio.ajiodetails")
print(cursor.fetchall())
