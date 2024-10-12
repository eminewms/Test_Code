print ("========燃烧你的卡路里========") # 输出软件标题
print (30 *"#") # 输出软件标题修饰
weight=float(input("输入您的体重（kg）：") ) # 将输入的体重转为浮点型，以便计算
speed=float(input("速度（千米/小时）：")) # 将输入的速度转为浮点型，以便计算
times=int(input("跑步时间（分钟）：")) # 将输入的时间转为整型，以便计算
dista=speed * times/60 # 根据速度和时间计算跑步距离
calor =weight * 30/(400/(speed*1000/60)) * times/60 # 计算跑步消耗的卡路里
print("跑步距离:",format(dista,'.2f'),'千米') # 输出跑步距离，格式化为保留2位小数
print("燃烧卡路里:",format(calor,'.2f'),'卡路里') # 输出跑步消耗的卡路里，格式化为保留2位小数