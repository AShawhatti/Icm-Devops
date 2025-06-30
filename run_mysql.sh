   1 i#!/bin/bash
  2 
  3 #Analogy of fetch and buffer I found online
  4 
  5 Imagine a mailbox (buffer) filled with letters (query results).
  6 
  7 #You have to take the letters out (fetch) before the mailman ca     deliver new mail (new query).
  8 
  9 #The mailbox isn’t a file, it’s just a temporary holding place.
 10 
 11 python3 <<EOF
 12 import mysql.connector
 13 
 14 conn = mysql.connector.connect(
 15     host="localhost",
 16     user="root",
 17     password="icm",
 18     database="ICM"
 19 )
 20 #cursor is used to send the command and grab the outcome or data
 21 cursor = conn.cursor()
 22
 23 #First Query
 24 cursor.execute("SELECT * FROM Customers")
 25 rows = cursor.fetchall()      #Fetches everything
 26 for row in rows:  
 27     print(row)  #Prints the output of each row selected
 28 
 29 
 30 # 2. UPDATE — Change 'John' to 'Smith'
 31 cursor.execute("UPDATE Customers SET Last_Name = 'John' WHERE Fi    rst_Name = 'John'")
 32 conn.commit()
 33 print("Updated a row in Customers.")
 34 
 35 # 3. ALTER TABLE — Add 'Email' column (
 36 try:
 37     cursor.execute("ALTER TABLE Customers ADD COLUMN Email VARCH    AR(100) NOT NULL")
 38     conn.commit()
 39     print("Altered the table to add Email column.")
 40 
 41 # 4. DELETE — Remove customer named 'John'
 42 cursor.execute("DELETE FROM Customers WHERE First_Name = 'John'"    )
 43 conn.commit()
 44 print("Deleted row(s) from Customers.")
 45 
 46 conn.commit()
 47 cursor.close()
 48 conn.close()
 49 EOF
