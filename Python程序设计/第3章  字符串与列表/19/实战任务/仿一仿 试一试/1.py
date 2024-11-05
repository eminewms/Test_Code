meney=[1.1674,1.1917,4.5521,0.1310,0.1487,0.1142]
chi=["港元","澳门元","台币","欧元","美元","英磅"]
eng=["HKD","MOP","TWD","EUR","USD","EBP"]
print("人民币最新汇率实时兑换价格")
for item1,item2,item3 in zip(meney,chi,eng): # 遍历由zip()函数打包生成的新列表
    print("1人民币="+ str(item1) +"(" + item2+")" +item3 )# 输出人民币兑换各货币价格
print("")
many=input("请输入需要兑换的人民币金额:\n ") # 输入要兑换的货币数值
for item1,item2,item3 in zip(meney,chi,eng): # 遍历zip()函数打包生成的新列表
    change =format(int(many)*item1,".0f") # 计算兑换的其他货币金额
    print(many+"人民币= "+change + item2+"(" +item3+")" )