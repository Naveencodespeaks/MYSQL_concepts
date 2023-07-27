import pymongo

data =  [
        {
            "item": "canvas",
            "qty": 100,
            "size": {"h": 28, "w": 35.5, "uom": "cm"},
            "status": "A",
        },
        {
            "item": "journal",
            "qty": 25,
            "size": {"h": 14, "w": 21, "uom": "cm"},
            "status": "A",
        },
        {
            "item": "mat",
            "qty": 85,
            "size": {"h": 27.9, "w": 35.5, "uom": "cm"},
            "status": "A",
        },
        {
            "item": "mousepad",
            "qty": 25,
            "size": {"h": 19, "w": 22.85, "uom": "cm"},
            "status": "P",
        },
        {
            "item": "notebook",
            "qty": 50,
            "size": {"h": 8.5, "w": 11, "uom": "in"},
            "status": "P",
        },
        {
            "item": "paper",
            "qty": 100,
            "size": {"h": 8.5, "w": 11, "uom": "in"},
            "status": "D",
        },
        {
            "item": "planner",
            "qty": 75,
            "size": {"h": 22.85, "w": 30, "uom": "cm"},
            "status": "D",
        },
        {
            "item": "postcard",
            "qty": 45,
            "size": {"h": 10, "w": 15.25, "uom": "cm"},
            "status": "A",
        },
        {
            "item": "sketchbook",
            "qty": 80,
            "size": {"h": 14, "w": 21, "uom": "cm"},
            "status": "A",
        },
        {
            "item": "sketch pad",
            "qty": 95,
            "size": {"h": 22.85, "w": 30.5, "uom": "cm"},
            "status": "A",
        },
    ]

client = pymongo.MongoClient("mongodb+srv://naveen:harekrishna123@cluster1.vbzncir.mongodb.net/?retryWrites=true&w=majority")
db = client.test
database = client['inventory']
collection = database["table"]
collection.insert_many(data)

d = collection.find()
for i in d:
    print(i)
# Find documents with status 'A'
d_a = collection.find({'status': 'A'})
print("\nDocuments with status 'A':")
for i in d_a:
    print(i)

# Find documents with status 'A' or 'P'
d_ap = collection.find({'status': {'$in': ['A', 'P']}})
print("\nDocuments with status 'A' or 'P':")
for i in d_ap:
    print(i)
# Find documents with status greater than 'C'  {'$gt': 'C'}
d_gt_c = collection.find({'status': {'$gt': 'C'}})
print("\nDocuments with status greater than 'C':")
for i in d_gt_c:
    print(i)
# Find documents with qty greater than 100 {'qty':100}
d_gt_100 = collection.find({'qty':100})
print("\nDocuments with qty greater than 100:")
for i in d_gt_100:
    print(i)

# Find documents with qty greater than equal to 100  {'$gte':100}
d_gt_equal_100 = collection.find({'qty':{'$gte':100}})
print("\nDocuments with qty greater than equal to 100:")
for i in d_gt_equal_100:
    print(i)

# Find documents with qty less than equal to 100 {'$lte':100}
d_less_equal_100 = collection.find({'qty':{'$lte':100}})
print("\nDocuments with qty less than equal to 100:")
for i in d_less_equal_100:
    print(i)

# Find documents with qty less than  100  {'$lt':100}
d_less_100 = collection.find({'qty':{'$lt':100}})
print("\nDocuments with qty less than  100:")
for i in d_less_100:
    print(i)


d_Items = collection.find({'items':'sketch pad','qty': {'$lte':95}})
print("\nDocuments with items = sketch pad and qty greater than 95:")
for i in d_Items:
    print(i)



d_Items_gt = collection.find({'item': 'sketch pad','qty':{"$gte":75}})
print("\nDocuments with items = sketch pad and qty greater than 75:")
for i in d_Items_gt:
    print(i)
#or conditions
d_Items_or = collection.find({'$or':[{'item': 'sketch pad'},{'qty': {"$gte": 75}}]})
print("\nDocuments with items = sketch pad and qty greater than 75:")
for i in d_Items_or:
    print(i)
# update
# update_items = collection.update_one({'item':'canvas'},{'$set':{'item':'naveen'}})
# for i in update_items:
#     print(i)

update_items = collection.update_one({'item': 'canvas'}, {'$set': {'item': 'naveen'}})

# Print the number of documents matched by the update (1 in this case)
print("Number of documents matched by the update:", update_items.matched_count)

# delete operations

collection.delete_one({'item':'naveen'})
daaada = collection.find({'item': 'naveen'})
for i in daaada:
    print(i)