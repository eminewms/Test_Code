num="296049623434251586137447705397389574602496296804807004337087"
order=""
for i in range(10):
    count=num.count(str(i))
    order+= str(i)+ ":"+ str(count)+"\n"
print(order)