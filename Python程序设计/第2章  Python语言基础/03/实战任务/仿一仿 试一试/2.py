add1=10                                 # 定义数值型变量add1，值为10
add2="5"                                # 定义字符型变量add2，值为"5"
add3=int(input('请输入一个整数：'))    # 定义整型变量add3，值为输入值，例如20
add4 = input('请输入一个浮点数：')     # 定义整型变量add4，值为输入值，例如13.15
print(add1+int(add2))                 # 输出“15”
print(add1+add3)                       # 输出“30”
print(add2+add4)                       # 输出“513.15”
print(add1+float(add4))               # 输出“23.15”
print(add3+float(add4))               # 输出“33.15”
