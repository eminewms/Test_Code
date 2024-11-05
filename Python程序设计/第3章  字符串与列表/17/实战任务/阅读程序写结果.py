new = [1, 2, 3, 4, 5, 6, 7]
num= int(input("请输入一个数字："))
new.reverse()
total=sum(new)
num%=len(new)
total=new[num]%total
print(total)