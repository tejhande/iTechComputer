import tkinter as tk
from tkinter import messagebox

# Function to handle login
def login():
    userid = entry_userid.get()
    password = entry_password.get()
    
    # Simple validation (you can replace with database check)
    if userid == "admin" and password == "1234":
        messagebox.showinfo("Login Status", "Login Successful!")
    else:
        messagebox.showerror("Login Status", "Invalid UserID or Password!")

# Create main window
root = tk.Tk()
root.title("Login Form")
root.geometry("300x200")

# User ID Label and Entry
tk.Label(root, text="User ID").pack(pady=5)
entry_userid = tk.Entry(root)
entry_userid.pack(pady=5)

# Password Label and Entry
tk.Label(root, text="Password").pack(pady=5)
entry_password = tk.Entry(root, show="*")
entry_password.pack(pady=5)

# Login Button
tk.Button(root, text="Login", command=login).pack(pady=20)

# Run the application
root.mainloop()
