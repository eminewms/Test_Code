import random
no1 = random.randint(0, 9)
no2 = random.randint(0, 9)
no3 = random.randint(0, 9)
no4 = random.randint(0, 9)
option1=random.choice(["+","-"])
option2=random.choice(["*","//"])
print()
print("\033[1;37;45m\t", no1,option1 , no2, "= ?\t\t\033[0m")
print()
print("\033[1;37;45m\t", no3, option2, no4, "= ?\t\t\033[0m")