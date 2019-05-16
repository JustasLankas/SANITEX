CREATE VIEW [dbo].[Worked_History]
	AS SELECT 
	a.First_name,
	a.Last_name,
	b.Company_name
	FROM dbo.Employees AS a 
	join dbo.Employment_History AS b 
	ON a.UserID = b.UserID
GO
