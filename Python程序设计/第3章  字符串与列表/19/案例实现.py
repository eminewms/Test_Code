i=1
menu=["B超室","化验室"]
user="张来,黎明,常冒,赵薇,吉舜锋,辛叶,沖余力,余人明,傅山,岳宁琳,昌紫衫,笪莎莉"
usergroup=user.split(",") # 将用户信息按照“,”分割成usergroup列表
user1=usergroup[0::2] # 将usergroup列表中的奇数位用户放到列表user1
user2=usergroup[1::2] # 将usergroup列表中的偶数位用户放到列表user2
print("="*35)
print("电子科分组排队系统 ".center(25))
print("="*35)
print((menu[0] +" "+ menu[1]).center(25))
template="{}"
for item1,item2 in zip(user1,user2):
    len1=len(item1.encode("gbk")) # 按GBK编码格式输出计算用户姓名的长度
    len0=len(item1)
    len3=round((len1-len0)/2)-1
    item3="A%03d"% i +" "+ item1
    item4="B%03d"% i +" "+ item2
    print (item3.ljust(18-len3 ) + item4 )
    i=i+1