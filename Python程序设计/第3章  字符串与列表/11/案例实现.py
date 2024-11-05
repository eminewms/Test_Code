import random # 导入随机模块
surname='赵，钱，孙，李，周，吴，郑，王，冯，陈，褚，卫，蒋，沈，韩，杨，朱，秦，尤，许'
second='中，万，斯，近，元，伟，丽，利，国，士，文，连，百，宏，可，立，成，海'
third='隆，智，渝，顺，乐，天，杰，夫，煜，兵，思，霆，炜，祺，亮，剀，炫，翔，维，瑞，韬，嘉，林，庆，玮'
surname=surname.replace("，","") # 删除字符串中的间隔符
second=second.replace("，","") # 删除字符串中的间隔符
third=third.replace("，","") # 删除字符串中的间隔符
# 随机产生一个三个字的姓名
name1=random.choice(surname)+random.choice(second)+random.choice(third)
# 随机产生一个两个字的姓名
name2=random.choice(surname)+random.choice(third)
print(name1)
print(name2)