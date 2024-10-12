password = ""                                  # 记录用户输入的密码
i=4                                            # 记录用户输入密码的机会
password += input("请输入密码：")
password += "、" + input("密码错误，还有"+str(i)+"次机会，请重新输入：")
i-=1                                          # 输入密码的机会减少一次
password += "、" + input("密码错误，还有"+str(i)+"次机会，请重新输入：")
i-=1                                          # 输入密码的机会减少一次
password += "、" + input("密码错误，还有"+str(i)+"次机会，请重新输入：")
i-=1                                          # 输入密码的机会减少一次
password += "、" + input("密码错误，还有"+str(i)+"次机会，请重新输入：")
print("\n密码被盗！", password)               # 输出“密码被盗！”和历次输入的密码
