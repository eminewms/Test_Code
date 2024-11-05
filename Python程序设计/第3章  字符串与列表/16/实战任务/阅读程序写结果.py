data = [1,11,21,31,41,51,61,71,81,91]
data.sort(reverse = True)
print(data)
num= int(input("请输入一个数字："))
num=num%len(data )
print(num)
luky=data[num]
luky%=num+7
print(luky)