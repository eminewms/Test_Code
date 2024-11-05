data=input("请输入7名裁判的打分，用英文逗号间隔分数:\n")
score = data.strip().split(',')  
print('去掉一个最低分:' ,str(min(score)))
print('去掉一个最高分:' ,str(max(score)))
score.remove(max(score))
score.remove(min(score))
digit=[float(i) for i in score]
avg=format(sum(digit)/len(digit),".3f")
print('该选手得分:',avg)
