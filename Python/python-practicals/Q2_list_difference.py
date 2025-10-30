# Program to find the difference between two lists
# Sample data
color_list_1 = ["red", "orange", "green", "blue", "white"]
color_list_2 = ["black", "yellow", "green", "blue"]

# Find the difference
diff_color1_color2 = list(set(color_list_1) - set(color_list_2))
diff_color2_color1 = list(set(color_list_2) - set(color_list_1))

# Display results
print("Color1 - Color2:", diff_color1_color2)
print("Color2 - Color1:", diff_color2_color1)
