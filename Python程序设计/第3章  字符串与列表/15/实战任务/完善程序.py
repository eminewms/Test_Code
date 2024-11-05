import random
print("福彩双色球号码：\n")
lan = []
lan.append(format(str(random.randrange(1, 34)),"0>2")) # 随机产生一个2位的红色球号码
lan.append(format(str(random.randrange(1, 34)),"0>2")) # 随机产生一个2位的红色球号码
lan.append(format(str(random.randrange(1, 34)),"0>2")) # 随机产生一个2位的红色球号码
lan.append(format(str(random.randrange(1, 34)),"0>2")) # 随机产生一个2位的红色球号码
lan.append(format(str(random.randrange(1, 34)),"0>2")) # 随机产生一个2位的红色球号码
lan.append(format(str(random.randrange(1, 34)),"0>2")) # 随机产生一个2位的红色球号码
blue=format(str(random.randrange(1, 17)),"0>2") # 随机产生一个2位的蓝色球号码
print(" ".join(lan)+" "+blue)
