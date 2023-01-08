CREATE TABLE [Majors]
(
	[MajorID] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(50) NOT NULL
)

CREATE TABLE [Subjects]
(
	[SubjectID] INT NOT NULL PRIMARY KEY,
	[SubjectName] VARCHAR(50) NOT NULL
)

CREATE TABLE [Students]
(
	[StudentID] INT NOT NULL PRIMARY KEY,
	[StudentNumber] INT NOT NULL,
	[StudentName] VARCHAR(50) NOT NULL,
	[MajorID] INT FOREIGN KEY
		REFERENCES [Majors](MajorID)
)

CREATE TABLE [Agenda]
(
	[StudentID] INT NOT NULL FOREIGN KEY
		REFERENCES [Students](StudentID),
	[SubjectID] INT NOT NULL FOREIGN KEY
		REFERENCES [Subjects](SubjectID)
	CONSTRAINT PK_Agenda 
		PRIMARY KEY (StudentID, SubjectID)
)

CREATE TABLE [Payments]
(
	[PaymentID] INT NOT NULL PRIMARY KEY,
	[PaymentDate] DATE NOT NULL,
	[PaymentAmount] DECIMAL(6, 2),
	[StudentID] INT NOT NULL FOREIGN KEY
		REFERENCES [Students](StudentID)
)