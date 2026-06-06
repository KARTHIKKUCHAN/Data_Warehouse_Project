/*
==================================================================
Create Database and Schemas
==================================================================
Script purpose:
	-This script creates a new database named "DataWareHouse" after checking if it already exists
	-If it exists it drops the database and recreates. Apart from that this query sets up three
	 different schemas for the database : 'bronze' , 'silver', 'gold'

WARNING:
	If there already exsists a database named "DataWareHouse" and if it contains any form of data,
	all the data would be lost after running this code. Proceeding with caution is required and also 
	ensuring for proper backups
*/

Use master;
Go 

-- Drop and recreate the "DataWareHouse" database
If EXISTS(select * from sys.databases where name = 'DataWareHouse')
Begin
	drop database DataWareHouse;
End
Go
--Create the database 
Create Database DataWareHouse;
Go 
 
Use DataWareHouse;
Go

--Create the schemas

Create Schema bronze;

Go 

Create Schema silver;
Go 

Create Schema gold;
Go 

