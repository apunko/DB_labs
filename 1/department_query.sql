USE AdventureWorks2012;
SELECT DepartmentID,Name
FROM HumanResources.Department
WHERE LEFT(Name, 1)='F' and Right(Name, 1)='e';