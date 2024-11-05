num= input("请输入你的身份证号：")
year= int(num[8:10])
month=int(num[10:12])
day=int(num[12:14])
year%=month
day%=month
year+=day
num=year%month
print(num)