# Program to check if a number is prime or not
# Take input from the user
num = int(input("Enter a number: "))
# Prime numbers are greater than 1
if num > 1:
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            print(num, "is not a prime number.")
            break
    else:
        print(num, "is a prime number.")
else:
    print(num, "is not a prime number.")
