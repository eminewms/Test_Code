var= input("请输入你的电话号码：")
num1=int(var[-2:])
num2=int(var[0:2])
num2+=num1
num1+=num2
num2//=3
num1%=num2
print(num1)