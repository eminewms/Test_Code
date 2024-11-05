two_lst = [[1, 2, 3], ['1', '2', '3'], [1, 2, 3]]  # 二维列表
target_list = [1,2,3]                              # 目标列表
for i in two_lst:
    if i ==target_list:  # 如果二维列表中子列表与目标列表相同
        i.clear()        # 清空二维列表中子列表
        print('清空后的二维列表：',two_lst)
