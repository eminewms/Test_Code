print("||||||||||||||||||||||")                      # 标题上边修饰
print("摄氏温度转其他温度换算")                        # 软件标题
print("||||||||||||||||||||||")                      # 标题上边修饰
she=float(input("摄氏温度：") )              # 输入摄氏温度，并转为浮点型
hua = she * 1.8 + 32                         # 华氏温度
kai = she + 273.15                            # 开氏温度
lie = she * 0.8                               # 列氏温度
lan = (she + 273.15) * 1.8                   # 兰金温度
print("摄氏温度："+str(she))
print("华氏温度："+str(hua))
print("开氏温度："+str(kai))
print("列氏温度："+str(lie))
print("兰金温度："+str(lan))
