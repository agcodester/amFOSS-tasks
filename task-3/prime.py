n = int(input("Enter a number:"))
c=0
for i in range(2, n+1):
	if i % n == 0:
		c+=1
if c == 1:
	print("Prime Number")
else:
	print("Not a Prime Number") 
