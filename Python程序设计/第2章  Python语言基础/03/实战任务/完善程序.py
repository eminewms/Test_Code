print ("=====燃烧你的卡路里=====") # 输出软件标题
print (30 *"#") # 输出软件标题修饰
weight=float(input("输入您的体重（kg）：") ) # 输入体重，转换为浮点型
speed=float(input("速度（千米/小时）：")) # 输入速度，转换为浮点型
time=int(input("跑步时间（分钟）：")) # 输入跑步时间，按分计算，转为整形
dista=(time-10)* speed/60+(5+5)*5/60 # 计算跑步距离
calor =weight * 30/(400/(speed*1000/60)) * (time-10)/60
print("跑步距离:",format(dista,'.2f'),'千米')
print("燃烧卡路里:",format(calor,'.2f'),'卡路里')