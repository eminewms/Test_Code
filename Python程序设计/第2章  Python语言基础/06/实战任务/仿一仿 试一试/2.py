ascii1 = 49         # 数字“1”对应的ASCII码整数为49
ascii2 = 10102      # 特殊数字序号“❶”对应的Unicode字符整数为10102
num=chr(ascii1)     # 将整数转换为对应字符
num0 = chr(ascii2)  # 将整数转换为对应的Unicode字符
print(num, "appale", "\n", num0,  "appale")  # 两种数字编号输出苹果的排名
ascii1+=1            # 数字“2”对应的ASCII码ascii1+1产生，为50
ascii2+=1            # “❶”对应的Unicode字符整数+1即 “❷”对应的Unicode字符整数
num=chr(ascii1)      # 获取ascii1对应的字符
num0 = chr(ascii2 ) # 获取ascii2对应的字符
print(num, "microsoft", "\n", num0, "microsoft")
