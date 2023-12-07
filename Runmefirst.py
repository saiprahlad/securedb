import mysql.connector

# Replace these values with your MySQL server credentials
host = 'localhost'
user = 'root'
password = ''

# Connect to MySQL server (you might need to specify port if it's not the default)
connection = mysql.connector.connect(
    host=host,
    user=user,
    password=password
)

# Create a cursor object to execute SQL queries
cursor = connection.cursor()

# Replace 'securedb' with your desired database name
database_name = 'securedb'

# Create the database
create_database_query = f"CREATE DATABASE {database_name};"
cursor.execute(create_database_query)

print(f"Database '{database_name}' created successfully.")

# Replace 'securedb_user' and 'user_password' with your desired username and password
username = 'securedb_user'
user_password = 'user_password'

# Create a user and grant privileges (replace 'localhost' with '%' if you want to allow connections from any host)
create_user_query = f"CREATE USER '{username}'@'localhost' IDENTIFIED BY '{user_password}';"
grant_privileges_query = f"GRANT ALL PRIVILEGES ON {database_name}.* TO '{username}'@'localhost';"
flush_privileges_query = "FLUSH PRIVILEGES;"

cursor.execute(create_user_query)
cursor.execute(grant_privileges_query)
cursor.execute(flush_privileges_query)

print(f"User '{username}' created and granted privileges.")

# Close the cursor and connection
cursor.close()
connection.close()
