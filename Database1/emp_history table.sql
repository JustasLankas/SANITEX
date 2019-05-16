CREATE TABLE Employment_History
(
EmpID INT IDENTITY(1,1) NOT NULL,
UserID INT NOT NULL, 
Date_from DATETIME NOT NULL,
Date_until DATETIME NULL,
Company_name VARCHAR(50) NULL,
Salary FLOAT(6) NULL,
Insert_Dtm DATETIME NOT NULL DEFAULT(getdate()),
CONSTRAINT PK_ID primary key (EmpID),
CONSTRAINT FK_UID foreign key (UserID) references Employees(UserID),
CONSTRAINT UC_History UNIQUE (UserID,Date_from,Date_until),
CONSTRAINT CHECK_DATES CHECK(Date_from < Date_until)
)
go
