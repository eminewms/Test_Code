import random
word= input("输入你的英文密码:\n").strip(" ")
num='abcdefghijklmnopqrstuvwxyz1234567890'
password=''
for item in word:
    new=chr(ord(item)+3)
    low=random.choice(num) # 随机输出一个num中的字符
    upp=random.choice(num).upper() # 随机输出一个num中的字符，并转为大写
    password+=upp+new+low
print("新生成密码：",password)