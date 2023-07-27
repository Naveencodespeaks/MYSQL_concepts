import mysql.connector as connection
mydb = connection.connect(host= "localhost", user = "root", passwd = "Harekrishna@123")
print(mydb)
cursor = mydb.cursor()
cursor.execute("select ajio_id, ajio_name from ajio.ajiodetails")
l = []
for i in cursor.fetchall():
    l.append(i)
print(l)
print(type(l[0]))





