# Program to add 'ing' or 'ly' to a given string
# Take input from user
string = input("Enter a string: ")
# Check conditions
if len(string) < 3:
    result = string
elif string.endswith('ing'):
    result = string + 'ly'
else:
    result = string + 'ing'

# Display the result
print("Result:", result)
