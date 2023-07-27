import pymongo
client = pymongo.MongoClient("mongodb+srv://naveen:harekrishna123@cluster1.vbzncir.mongodb.net/?retryWrites=true&w=majority")
db = client.Test_MongoDB1
print(db)

data = {
    "name" : "govinda",
    "email_id": 'govinda@gmail.com',
    "place": "govindadham"
}

record = [
    {'companyName': 'iNeuron',
     'product': 'Affordable AI',
     'courseOffered': 'Machine Learning with Deployment'},

    {'companyName': 'iNeuron',
     'product': 'Affordable AI',
     'courseOffered': 'Deep Learning for NLP and Computer vision'},

    {'companyName': 'iNeuron',
     'product': 'Master Program',
     'courseOffered': 'Data Science Masters Program'}
]

database= client["Govinda"]
collections = database["GoverdhanaHill"]
collections.insert_one(data)

database1 = client["list_of_records"]
collections1 = database1["records"]
collections1.insert_many(record)

# record = collections1.find()
# for i in record:
#     print(i)

#

# data1 = collections1.find({"companyName": "iNeuron"})
data2 = collections1.find({"courseOffered":{"$gt":"E"}})
for i in data2:
    print(i)