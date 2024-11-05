import random
num='abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ'
word=random.choice(num) # 随机输出一个num中的字符
option=random.choice(num)+random.choice(num)+random.choice(num)+random.choice(num)
print("验证码：",option)
var= input("请输入验证码:\n").strip(" ")
if option.lower()==var.lower(): # 全部转为小写进行比较
    print("验证通过！" )
else:
    print("输入错误！" )