# Function to return a list with distinct elements
def unique_list(lst):
    return list(set(lst))

# Sample data
sample_list = [1, 2, 3, 3, 3, 3, 4, 5]

# Call the function
result = unique_list(sample_list)

# Display the result
print("Unique List:", result)
