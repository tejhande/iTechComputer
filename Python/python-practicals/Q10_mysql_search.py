import mysql.connector

# Step 1: Connect to the MySQL database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",   
    database="companydb"        # same database created earlier
)
cursor = conn.cursor()

# Step 2: Ask user how they want to search
print("Search Employee")
print("1. Search by Employee Number")
print("2. Search by Employee Name")
choice = input("Enter your choice (1 or 2): ")

if choice == "1":
    empno = int(input("Enter Employee Number to search: "))
    search_query = "SELECT * FROM employee WHERE empno = %s"
    cursor.execute(search_query, (empno,))
elif choice == "2":
    ename = input("Enter Employee Name to search: ")
    search_query = "SELECT * FROM employee WHERE ename = %s"
    cursor.execute(search_query, (ename,))
else:
    print("❌ Invalid choice.")
    cursor.close()
    conn.close()
    exit()

# Step 3: Fetch the record(s)
result = cursor.fetchall()

# Step 4: Display the result
if len(result) == 0:
    print("No employee found.")
else:
    print("\nEmployee Details:")
    print("EmpNo | Name | HireDate | Salary")
    print("-------------------------------------")
    for row in result:
        print(f"{row[0]} | {row[1]} | {row[2]} | {row[3]}")

# Step 5: Close the connection
cursor.close()
conn.close()
