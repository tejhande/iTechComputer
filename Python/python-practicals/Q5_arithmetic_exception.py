# Program to perform division and handle ArithmeticError
try:
    # Take input from the user
    numerator = float(input("Enter numerator: "))
    denominator = float(input("Enter denominator: "))
    # Perform division
    result = numerator / denominator
    print("Result:", result)
except ArithmeticError as e:
    # Handle arithmetic errors such as division by zero
    print("Arithmetic Error occurred:", e)
except ValueError:
    # Handle invalid (non-numeric) inputs
    print("Invalid input! Please enter numeric values.")
