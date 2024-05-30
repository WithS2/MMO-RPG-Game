USE master 
GO
DROP DATABASE db_mmorpg
GO

CREATE DATABASE db_mmorpg
ON PRIMARY
(
NAME = 'db_mmorpg_data',
FILENAME = 'c:\sql2014\db_mmorpg_data.mdf',
SIZE = 5MB,
FILEGROWTH = 10%
)

LOG ON 
(
NAME = 'db_mmorpg_log',
FILENAME = 'c:\sql2014\db_mmorpg_log.ldf',
SIZE = 5MB,
FILEGROWTH = 10%
)
GO

USE db_mmorpg
GO

CREATE TABLE person
(
	name VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL PRIMARY KEY,
)
GO

CREATE TABLE account
(
	Accname VARCHAR(30) PRIMARY KEY,
	time int NOT NULL,
	address VARCHAR(50) REFERENCES person(email),
)
GO

CREATE TABLE pCharacter
(
	name VARCHAR(30) PRIMARY KEY,
	skill int NOT NULL,
	accName VARCHAR(30) NOT NULL REFERENCES account(Accname), 
)
GO

CREATE TABLE items
(
	itemID INT PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	description TEXT NOT NULL,
)
GO

CREATE TABLE itemAmount
(
	itemsPerChar INT PRIMARY KEY,
	itemID INT NOT NULL REFERENCES items(itemID),
	charName VARCHAR(30) NOT NULL REFERENCES pCharacter(name),


)
GO

CREATE TABLE errors
(
errID INT PRIMARY KEY,
errText TEXT NOT NULL,
)
