test='''李牧野 546，张寒冰 656，周吉林 609，赵子辉 542，宋明理 578，杨继辉 476，高南鹏 598，吴慧明 687'''
new=[]
stad=test.split("，")                        # 对test字符串使用“，”分隔符进行分割
for item in stad:                            # 遍历新生成的列表
    lin=item.split(" ")                      # 分解学生姓名和成绩
    new.append([lin[1],lin[0]])             # 将成绩和学生姓名添加到new列表，很关键
new.sort(reverse = True)                    # 对new列表降序排序
for item in new:                             # 遍历输出排序后的结果
    print(item[1],item[0])
test_max=max(new)                            # 获取new列表成绩的最大值
test_min=min(new)                            # 获取new列表成绩的最小值
print("本次考试最高分："+test_max[1],test_max[0])
print("本次考试最低分："+test_min[1],test_min[0])
