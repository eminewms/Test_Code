print("畅想明天歌咏比赛打分程序".center(30))
print('='*40 )
score=[] # 创建空列表，存储选手分数
data=input("请输入7名裁判的打分，用英文逗号间隔分数:\n")
score = data.split(',') # 将输入的分数转换为列表
print(score) # 输出选手的打分
print('去掉一个最低分:' ,str(min(score)))
print('去掉一个最高分:' ,str(max(score)))
score.remove(max(score)) # 去掉最高分
score.remove(min(score)) # 去掉最低分
digit=[float(i) for i in score] # 将字符型数字转换为浮点型数字，以便使用sum()函数求和
avg=format(sum(digit)/len(digit),".2f") # 格式化平均成绩为保留2位小数
print('该选手得分:',avg)