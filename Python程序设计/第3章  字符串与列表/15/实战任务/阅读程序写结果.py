eight=["乾","坎","艮","震","巽","离","坤","兑"]
num= int(input("请输入50以内大于0的数字："))
good=num%24
num%=8
for item in eight[0:num+1]:
    num+= len((item))
num+=len(eight)+12
num%=good
print("幸运号码",num)