num= input("请输入三个字母（大小写均可）：")
rev=num[-1::-1]
upp=num.upper()
low=rev.lower()
mid=num.capitalize()
num=low[1]+mid[1]+upp[1]
var=num[::-1]
print(var)