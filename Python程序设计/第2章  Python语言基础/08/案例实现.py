print("lele超市收银系统")                                 #  输出软件标题名称
name= input("商品名称：")
price= input("商品价格：")
count= input("商品数量：")
off= input("商品折扣：")
pay=round(int(count) *float( price) *float(off),2)      #  计算应付金额，四舍五入
print("应付金额：：", pay)
get= float(input("实收："))
ret=get-pay                                                 #  计算找零金额
print("lele超市 购物小票")
print("商品名称  价格  数量   折扣")
print(name ,price +"  *" +count+"  *" + off  )           #  输出商品信息
print("应付：" ,pay)
print("实收：" ,get)
print("找零：" ,ret)
