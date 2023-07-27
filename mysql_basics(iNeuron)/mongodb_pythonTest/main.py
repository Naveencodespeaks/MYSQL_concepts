import pymongo
client = pymongo.MongoClient("mongodb+srv://sainaveen:harekrishna123@cluster0.iobobw6.mongodb.net/?retryWrites=true&w=majority")
db = client.main
print(db)

d = {
    "name": "naveen",
    "email_id": "naveen@gmail.com",
    "surname": "adepu"
}

d = {
    "name": "gopal",
    "email_id": "gopal@gmail.com",
    "surname": "krishna"
}

d = {
    "name": "krishna",
    "email_id": "krishna@gmail.com",
    "surname": "madhava"
}


data = {
    "name": "naveen",
    "mail_id": "sainaveen@gmail.com",
    "subject" : ["data science","big data", "data analystics"]
}


db1 = client['mongotest']
coll = db1['test']
coll.insert_one(data )


