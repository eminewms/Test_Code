second=int(input("请输入你从出生到现在大概度过了多少秒：\n")) # 用户输入目前度过的秒数
minute=divmod(second,60) # 根据秒数计算返回的整数分钟和秒数
print("你已经度过了{}分钟零{}秒".format(minute[0],minute[1]))
hour=divmod(minute[0],60) # 根据分钟数计算返回的整小时和分钟
print("你已经度过了{}小时零{}分钟".format(hour[0],hour[1]))
day=divmod(hour[0],24) # 根据小时数计算返回的整天数和小时
print("你已经度过了{}天零{}小时".format(day[0],day[1]))
year=divmod(day[0],365) # 根据天数计算返回的年数和天数
print("你已经度过了{}年零{}天".format(year[0],year[1]))