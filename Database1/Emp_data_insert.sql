CREATE  PROCEDURE  INSERT_EMPLOYMENT_HISTORY 
   @first_name VARCHAR(50) = NULL,
   @last_name VARCHAR(50) = NULL,
   @DOB DATETIME= NULL,
   @Date_from DATETIME = NULL,    
   @Date_until  DATETIME = NULL,     
   @Company_name VARCHAR(50) = NULL,    
   @Salary FLOAT  = NULL
AS  
BEGIN  
 SET NOCOUNT ON  
 INSERT INTO dbo.Employment_History  
      ( 
		UserID,
		Date_from,
		Date_until,
		Company_name,
		Salary                       
      )

 VALUES 
      ( 
		(SELECT UserID FROM dbo.Employees 
		where First_name = @first_name and Last_name = @last_name and DOB = @DOB),
        @Date_from,
        @Date_until,
        @Company_name,
        @Salary                     
      ) 

END 
RETURN 0
