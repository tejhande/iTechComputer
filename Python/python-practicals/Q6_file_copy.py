# Program to copy contents from one file to another

# Take filenames as input
source_file = input("Enter the source file name: ")
destination_file = input("Enter the destination file name: ")

try:
    # Open source file in read mode and destination in write mode
    with open(source_file, 'r') as src:
        with open(destination_file, 'w') as dest:
            # Read contents and write to destination
            dest.write(src.read())

    print(f"Contents of '{source_file}' have been copied to '{destination_file}' successfully.")

except FileNotFoundError:
    print("Error: Source file not found.")
except IOError:
    print("Error: An I/O error occurred while copying the file.")
