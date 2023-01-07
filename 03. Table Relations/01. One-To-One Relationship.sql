CREATE DATABASE [TableRelations]

USE [TableRelations]

-- Paste in Judge from this point on

-- Table Passports

CREATE TABLE [Passports]
(
	[PassportID] INT NOT NULL,
	[PassportNumber] CHAR(8) NOT NULL,
)

ALTER TABLE [Passports]
ADD CONSTRAINT PK_PassportId 
PRIMARY KEY (PassportId)

INSERT INTO [Passports] VALUES
	(101, 'N34FG21B'),
	(102, 'K65LO4R7'),
	(103, 'ZE657QP2')

-- Table Persons

CREATE TABLE [Persons]
(
	[PersonId] INT IDENTITY,
	[FirstName] NVARCHAR(50) NOT NULL,
	[Salary] DECIMAL(7, 2) NOT NULL,
	[PassportID] INT NOT NULL
)

ALTER TABLE [Persons]
ADD CONSTRAINT PK_PersonId
PRIMARY KEY (PersonId)

ALTER TABLE [Persons]
ADD CONSTRAINT FK_Persons_Passports
FOREIGN KEY (PassportId) 
REFERENCES [Passports](PassportId)

INSERT INTO [Persons] VALUES
	('Roberto', 43300.00, 102),
	('Tom', 56100.00, 103),
	('Yana', 60200.00, 101)