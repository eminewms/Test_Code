word="当下两军相对，玄德出马，左有云长，右有翼德，扬鞭大骂：“反国逆贼，何不早降！”程远志大怒，遣副将邓茂出战。张飞挺丈八蛇矛直出，手起处，刺中邓茂心窝，翻身落马。程远志见折了邓茂，拍马舞刀，直取张飞。云长舞动大刀，纵马飞迎。程远志见了，早吃一惊，措手不及，被云长刀起处，挥为两段。"
name="云长翼德"
count=word.count(name[0:2])
order=""
size=-2
new=""
for i in range(count): # 按“云长”出现次数添加位置索引
    size_new=word.find(name[0:2],size+len(name[0:2]))
    new+=word[size:size_new+len(name[0:2])]+"("+str(size_new)+")"
    order+=str(size)+" "
    size=size_new+len(name[0:2])
new=new+word[size:]
print(new)