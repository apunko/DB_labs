USE AdventureWorks2012;
SELECT BusinessEntityID,JobTitle,Gender,datediff(year,HireDate,CAST(GETDATE() AS DATE)) as 'YearsWorked'
FROM HumanResources.Employee
WHERE datediff(year,BirthDate,CAST(GETDATE() AS DATE)) >= 65;