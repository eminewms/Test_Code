high= input("请输入你的身高(厘米)：")
num=5
for item in high:
  num+= int(item)
num+=len(high)
print(num)