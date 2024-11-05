import random
print("福彩双色球号码：\n")
lan = []
lan.append(str(random.randrange(1, 34))) # 随机产生一个红色球号码
lan.append(str(random.randrange(1, 34))) # 随机产生一个红色球号码
lan.append(str(random.randrange(1, 34))) # 随机产生一个红色球号码
lan.append(str(random.randrange(1, 34))) # 随机产生一个红色球号码
lan.append(str(random.randrange(1, 34))) # 随机产生一个红色球号码
lan.append(str(random.randrange(1, 34))) # 随机产生一个红色球号码
blue=str( random.randrange(1, 17)) # 随机产生一个蓝色球号码
print(" ".join(lan)+" "+blue)