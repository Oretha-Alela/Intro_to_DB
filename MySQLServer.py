import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="cwalela",
    password="sqlite3#2024",
    database="alx_book_store"
)

print(mydb.get_server_info())

