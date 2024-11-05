money="1:杰夫·贝佐斯,2:伯纳德·阿诺特,3:比尔·盖茨,4:沃伦·巴菲特,5:马克·扎克伯格"
net=money.split(",")
for item in net:
    new=item.split(":")
    print(format(new[0],"0>3"),new[1])
