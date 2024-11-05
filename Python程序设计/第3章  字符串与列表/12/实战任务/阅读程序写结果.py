year= int(input("请输入你的出生年份："))
name= input("请输入你的姓名：")
year-= 1900
year%= len(name)
year+= len(name)
print(year)