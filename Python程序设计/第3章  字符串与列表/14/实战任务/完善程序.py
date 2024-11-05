import random
word= input("输入你的英文密码:\n").strip(" ")
num='abcdefghijklmnopqrstuvwxyz1234567890'
password=''
save=[]
for item in word:
    new=chr(ord(item)+3)
    low=random.choice(num)
    upp=random.choice(num).upper() # 随机从num中选取一个字符并转为大写
    password+=upp+new+low
print("新生成密码：",password)
save.append(password)
print(save)



word=save[0]
password=""
for i in range(1,len(word),3):
    new=chr(ord(word[i])-3) # 按元素的ASCII码值加3再返回对应字符
    password +=new
print("还原密码：",password)
