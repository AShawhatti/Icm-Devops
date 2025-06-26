		Using MySQL In LINUX Ubuntu Environment  
1. Hopefully everybody logon in Linux Ubuntu environment.
To connect to MySQL from a Linux environment, you can use the command line client or graphical tools like MySQL Workbench. The command line approach involves using the mysql command with appropriate credentials (username, password, host, port, database name). Graphical tools like MySQL Workbench provide a visual interface for managing connections and executing queries. 
Command Line Connection:
Open a terminal: Access your Linux command line interface.
Use the mysql command: Enter the following command, replacing placeholders with your actual values: 
Code
    mysql -u [username] -p -h [host] -P [port] [database_name]
-u [username]: Specifies the MySQL username. 
-p: Prompts for the password associated with the username. 
-h [host]: Specifies the MySQL server's hostname or IP address. 
-P [port]: Specifies the port number (default is 3306). 
[database_name]: Specifies the database to connect to (optional). 


1. Enter the password:
.Opens in new tab
If the -p option is used, you'll be prompted to enter the password for the specified user. 


2. Execute MySQL commands:
.Opens in new tab
Once connected, you can execute SQL commands like SHOW DATABASES; or USE [database_name];. 

2.  To authenticate the root user, enter the following:

$ mysql -u root -p
Question by student?
what is -u root -p?
Answer: The "u root p command line" typically refers to the use of specific options with a command-line utility, particularly in the context of accessing a database like MySQL. 
Here's a breakdown of what each part usually signifies in this context:
-u: This flag indicates the username you are using to connect to the database.
root: This specifies that you are attempting to connect as the root user, which is typically the administrator account with full privileges.
-p: This flag signifies that you will be prompted to enter a password for the specified user (in this case, the root user). 
Example:
The command is commonly used to connect to a MySQL database as the root user. When you execute this command, the system will prompt you to enter the root user's password.  
Assign privileges
Now it’s time to set which privileges the new user will have. The syntax for this is:
mysql> GRANT PRIVILEGE ON database.table TO 'username'@'host';
Privileges are separated with a comma. To give global privileges, replace “database.table” with an asterisk “*”.
In the following example, we grant a user permission to create (CREATE), modify (ALTER) and delete (DROP) databases and to insert (INSERT), select (SELECT), update (UPDATE), and delete (DELETE) data in a table.
mysql> GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT on *.* TO 'user'@'host' WITH GRANT OPTION;


 “WITH GRANT OPTION” grants the user permission to give the privileges that they have to other users.
Now empty the cache with “FLUSH PRIVILEGES”:
mysql> FLUSH PRIVILEGES;


Afterwards, you can close the MySQL command prompt:
mysql> exit
=================================================================

1.  Now you can log in with the new username:
$ mysql -u username -p

Use the command followed by your username and the flag (for password):
mysql -u [username] -p

Replace with your MySQL username.

You'll be prompted to enter your password. 



Now we are in MySQL database:
LET US FOLLOW STEP BY STEP FROM HERE!!!!!!!

1.  Let us check the database exits:
     Command is:
$ MySQL 
        Show databases;
It will display the database exists in MySQL 

2. Create a Database (if you don't have one):
If you already have a database, you can skip this step.

To create a new database, use the statement:

sql
CREATE DATABASE [database_name]; -- USE ICMCSDI as a database name
Replace with your desired database name.
Switch to the newly created database using the statement:
3.  There are so many database exits but over here you have to USE the new created database (you just created) 
Note: if are not going to type the following SQL - USE statement its by default assign to any database so always TYPE  the USE statement.

sql
USE ICMCSDI;

====================================================








Now we are ready to create table
3. Create a Table:
Define your table using the statement, specifying column names, data types, and optional constraints.
The general syntax is:
sql
    Create table DevopsClass
(ClassID               INT   Not Null    Auto Increment,
 StudentFname    Varchar(255) Not Null,
 StudentLname     Varchar(255) Not Null,
Stu_DOB              Date,
Stu_age		 INT,
Stu_address        Varchar(255),
Stu_email            Varchar(255),
Stu_cell                Varchar(255),
Stu_tution             decimal(10,2),
Primary key(ClassID)
);

Now Table Devopsclass created
How we make sure it created with correct information?
we will type Describe statement
sql
Desc DevopsClass;
It will display the whole table.
















4. Insert Data into the Table:
Use the statement. 
sql

INSERT INTO DevopsClass
(ClassID,              
 StudentFname,   
 StudentLname,    
Stu_DOB,             
Stu_age,		
Stu_address,        
Stu_email,            
Stu_cell,               
Stu_tution  
)
values
('Ali','Amjad','2000-02-02',29,'123 Sunshine Blvd, Frederick','Ali@gmail.com','300-00-0000',2000.00),
('Khan','Mohammed','1998-02-02',32,'123 Trump Blvd, Frederick','Khan@gmail.com','300-99-9999',8000.00),
('King','Dubia','2009-02-02',16,'123 KingDubia Blvd, Dubia','Mohammed@gmail.com','300-88-0088',100000.00),
('Mohammed','Dubiawala','1998-02-02',16,'123 Bryani Blvd, Dubia','Mohammed@gmail.com','300-99-9988',100022.23);


     

5. Verify the Data:
To see the data you've inserted, use the statement:
sql
SELECT * FROM Devopsclass;

This command retrieves all columns () from the table.

============================================

We can also use Nano text editor to write MySQL script.
It's straightforward to create a MySQL script using the text editor in Linux. Here's a step-by-step guide to create a script with and statements and execute it:
1. Create a New File with :
Open your terminal in Linux.
Type followed by the desired filename for your MySQL script (e.g., ).
Press Enter to open the editor with that new file. 


2. Write Your MySQL Code (CREATE and INSERT Statements):
Inside the editor, type your SQL statements. Here's an example:
sql
CREATE DATABASE ICMCSDI;  Already created
USE ICMCSDI;


    Create table DevopsClass
(ClassID               INT   Not Null    Auto Increment,
 StudentFname    Varchar(255) Not Null,
 StudentLname     Varchar(255) Not Null,
Stu_DOB              Date,
Stu_age		 INT,
Stu_address        Varchar(255),
Stu_email            Varchar(255),
Stu_cell                Varchar(255),
Stu_tution             decimal(10,2),
Primary key(ClassID)
);





Now Insert data into the table:
sql

INSERT INTO DevopsClass
(ClassID,              
 StudentFname,   
 StudentLname,    
Stu_DOB,             
Stu_age,		
Stu_address,        
Stu_email,            
Stu_cell,               
Stu_tution  
)
values
('Ali','Amjad','2000-02-02',29,'123 Sunshine Blvd, Frederick','Ali@gmail.com','300-00-0000',2000.00),
('Khan','Mohammed','1998-02-02',32,'123 Trump Blvd, Frederick','Khan@gmail.com','300-99-9999',8000.00),
('King','Dubia','2009-02-02',16,'123 KingDubia Blvd, Dubia','Mohammed@gmail.com','300-88-0088',100000.00),
('Mohammed','Dubiawala','1998-02-02',16,'123 Bryani Blvd, Dubia','Mohammed@gmail.com','300-99-9988',100022.23);

Following step self explanatory: 
This script first creates a database named , then switches to using it.
It then creates a table named with , , and columns.
Finally, it inserts two rows into the table. 
3. Save the Script:
Press (WriteOut) to save the file.
Confirm the filename by pressing Enter. 
4. Exit :
Press to exit the editor.
If you have unsaved changes, will prompt you to save. Press for Yes to save and exit. 
5. Execute the MySQL Script:
Back in the terminal, use the command to execute the script:
bash
mysql -u your_username -p < mysql_script.sql
Replace with your MySQL username.
extension will be .SQL
You will be prompted to enter your MySQL password.
The symbol redirects the contents of as input to the command. 
Important Notes:
Ensure you have MySQL installed and configured correctly.
You might need to adjust the database name, table name, and column details in the SQL script according to your specific needs.
For security reasons, avoid including your password directly in the script. Use the option and enter it when prompted.
If you need to connect to a remote MySQL server, refer to the provided search results for information on how to configure remote access and connect using the command line. 
By following these steps, you can successfully create and execute MySQL scripts using in Linux to perform operations like creating databases, tables, and inserting data. 
Execute the .sql file in linux
Using the MySQL Command-Line Client:
Connect to the MySQL server:
bash
mysql -h 127.0.0.1 -P 3306 -u root -p
This command connects to the MySQL server at the specified host (127.0.0.1) and port (3306) with the user 'root' and requests a password.
Execute the .sql script:
Native method: Use input redirection to feed the script into the MySQL client.
bash
mysql -h 127.0.0.1 -P 3306 -u root -p < /tmp/script.sql
Replace with the correct path to the file.
Source command: If already connected to the MySQL server, use the command within the MySQL client.
sql
mysql> source /tmp/script.sql
Replace with the correct path to the file.


