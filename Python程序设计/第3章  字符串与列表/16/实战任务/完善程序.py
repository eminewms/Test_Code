test='''李牧野 546，张寒冰 656，周吉林 609，赵子辉 542，宋明理 578，杨继辉 476，高南鹏 598，吴慧明 687'''
new=[]
stad=test.split("，")
for item in stad:
    lin=item.split(" ")
    new.append(int(lin[1]))
print(new)
avg= sum(new)/len(new)
print("考试平均分：",avg)