import mysql.connector
from mysql.connector import errorcode


mydb = mysql.connector.connect(
    host="localhost",
    user="cwalela",
    password="sqlite3#2024",
    database="alx_book_store"
)

try:
    connection = mysql.connector.connect(mydb)
    cursor = connection.cursor()

    # Create the database
    cursor.execute("CREATE DATABASE alx_book_store")

    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist.")
    elif err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Access denied: check your username and password.")
    else:
        print(f"Error: {err}")
finally:
    # Clean up and close the connection
    cursor.close()
    connection.close()