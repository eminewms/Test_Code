num= input("请输入一个二位整数：")
var=num[::-1]
add=int(var)+int(num)
new=[num,var,str(add)]
total=0
for item in new:
    total+=int(item[0])
print(total)