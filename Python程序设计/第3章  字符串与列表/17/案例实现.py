print(" =======夏令营报名系统=======")
term=[]
for i in range(1,5):
    order=format(i,"0>3")                   # 建立3位学生编号
    name = input(" 姓    名：")
    money= int(input(" 缴纳费用："))
    term.append([order,name,money])         # 添加学生信息到term列表
print(" =======报名情况统计=======")
term.reverse()                                # 对列表所有元素反转
for item in term:
    print(item[0],item[1],item[2])          # 输出学生信息
tup = tuple(a[2] for a in term)             # 将缴费金额提取成元组
total=sum(tup)                                # 对元组的金额进行汇总
print("缴纳总费用：",total)
