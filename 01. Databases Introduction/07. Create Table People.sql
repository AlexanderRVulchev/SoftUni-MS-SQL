CREATE TABLE [People]
(
	[Id] INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(200) NOT NULL,
	[Picture] IMAGE,
	[Height] DECIMAL(3, 2),
	[Weight] DECIMAL(4, 2),
	[Gender] CHAR(1) NOT NULL,
	[Birthdate] DATE NOT NULL,
	[Biography] NVARCHAR(MAX),
)

INSERT INTO [People] VALUES
	('John', NULL, 1.80, 72.00, 'm', '2001-12-01', 'John bio'),
	('Jane', NULL, 1.71, 58.00, 'f', '2002-11-15', 'Jane bio'),
	('Jim', NULL, 1.68, 95.00, 'm', '1998-02-02', 'Jim bio'),
	('Jenna', NULL, 1.64, 49.00, 'f', '2004-06-09', 'Jenna bio'),
	('Jack', NULL, 1.83, 80.00, 'm', '1985-09-24', 'Jack bio')