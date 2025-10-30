# Program to print all distinct values in a dictionary list

# Sample data
sample_data = [
    {"V": "S001"},
    {"V": "S002"},
    {"VI": "S001"},
    {"VI": "S005"},
    {"VII": "S005"},
    {"V": "S009"},
    {"VIII": "S007"}
]

# Use a set to store unique values
unique_values = set()

# Extract values from all dictionaries
for dic in sample_data:
    for value in dic.values():
        unique_values.add(value)

# Display the unique values
print("Unique Values:", unique_values)
