-- Check the name of your own key

ALTER TABLE [Users]
DROP PK__Users__3214EC0782CA3FE3

ALTER TABLE [Users]
ADD CONSTRAINT PK__Users__3214EC0782CA3FE3 PRIMARY KEY (Id) ;

ALTER TABLE [Users]
ADD CONSTRAINT CHK_Usernames CHECK (LEN(Username) >= 3)
