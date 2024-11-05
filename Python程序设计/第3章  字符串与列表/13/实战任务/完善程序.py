money="1:杰夫·贝佐斯,2:伯纳德·阿诺特,3:比尔·盖茨,4:沃伦·巴菲特,5:马克·扎克伯格"
net=money.split(",")
for item in net:
    new=item.split(":")
    print("NO"+new[0],new[1])




# money="1:杰夫·贝佐斯,2:伯纳德·阿诺特,3:比尔·盖茨,4:沃伦·巴菲特,5:马克·扎克伯格"
# net=money.split(",")
# for item in net:
#     new=item.split(":") # 用“:”分割item
#     name=item.split("·") # 用“·”分割item
#     print("NO"+new[0],name[1])