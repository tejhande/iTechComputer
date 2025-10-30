import mysql.connector

# Step 1: Connect to MySQL Server (not to any database yet)
conn = mysql.connector.connect(
    host="localhost",
    user="root",     
    password="root" 
)
cursor = conn.cursor()

# Step 2: Create a new database
cursor.execute("CREATE DATABASE IF NOT EXISTS companydb")
print("Database 'companydb' created or already exists.")

# Step 3: Connect to the newly created database
conn.database = "companydb"

# Step 4: Create the employee table
create_table_query = """
CREATE TABLE IF NOT EXISTS employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    hiredate DATE,
    salary DECIMAL(10,2)
)
"""
cursor.execute(create_table_query)
print("Table 'employee' created or already exists.")

# Step 5: Insert data into the table
insert_query = """
INSERT INTO employee (empno, ename, hiredate, salary)
VALUES (%s, %s, %s, %s)
"""

# Step 6: Take input from the user
empno = int(input("Enter Employee Number: "))
ename = input("Enter Employee Name: ")
hiredate = input("Enter Hire Date (YYYY-MM-DD): ")
salary = float(input("Enter Salary: "))

data = (empno, ename, hiredate, salary)

# Step 7: Execute the insert command
cursor.execute(insert_query, data)
conn.commit()

print("✅ Data inserted successfully into 'employee' table!")

# Step 8: Close the connection
cursor.close()
conn.close()
