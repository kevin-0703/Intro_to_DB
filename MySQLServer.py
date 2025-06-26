import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL Server (adjust user/password as needed)
    connection = mysql.connector.connect(
        host="localhost",
        user="alxbookstoreadmin",
        password="password1",
        database="alx_book_store"  # ← replace with your actual password
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error: {e}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()
