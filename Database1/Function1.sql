CREATE FUNCTION [dbo].[Emp_History_Search]
(
	@surname VARCHAR(50)
)
RETURNS @returntable TABLE
(
	First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Date_from DATETIME,
	Date_until DATETIME,
	Company_name VARCHAR(50),
	Salary FLOAT(15)
)
AS
BEGIN
	INSERT into @returntable
	SELECT 
		a.First_name,
		a.Last_name,
		b.Date_from,
		b.Date_until,
		b.Company_name,
		b.Salary
	FROM Employees a join Employment_History b
	ON a.UserID=b.UserID
	WHERE a.Last_name like '%' + @surname + '%'

	RETURN
END
