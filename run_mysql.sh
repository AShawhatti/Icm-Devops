#!/bin/bash

#Analogy of fetch and buffer I found online

#Imagine a mailbox (buffer) filled with letters (query results).

#You have to take the letters out (fetch) before the mailman ca deliver new mail (new query).

#The mailbox isn’t a file, it’s just a temporary holding place.

python3 <<EOF
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="icm",
    database="ICM"
)
#cursor is used to send the command and grab the outcome or data
cursor = conn.cursor()

#First Query
#cursor.execute("SELECT * FROM Customers")
#rows = cursor.fetchall()      #Fetches everything
#for row in rows: 
#    print(row)  #Prints the output of each row selected

conn.commit()
cursor.close()
conn.close()
EOF
