film=[["哪吒之魔童降世",50.01],["流浪地球", 46.79],["我和我的祖国", 31.19],["中国机长",29.00],["疯狂的外星人", 22.11]]
record=""
money=[]
for i in range(len(film)):
    record+="NO."+ str(i+1)+"\t"+film[i][0]+"\t"+str(film[i][1])+"\n"
    money.append(film[i][1])
print("2019年中国内地电影票房排名\n"+record)
print("前5部电影票房总收入："+format(sum(money),".2f"))