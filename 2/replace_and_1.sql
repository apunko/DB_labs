USE AdventureWorks2012;
SELECT Employee.BusinessEntityID,REPLACE(JobTitle,'and','&') as 'JobTitle',Name as 'DepName'
FROM HumanResources.Employee
INNER JOIN HumanResources.EmployeeDepartmentHistory
ON Employee.BusinessEntityID=EmployeeDepartmentHistory.BusinessEntityID
INNER JOIN HumanResources.Department
ON EmployeeDepartmentHistory.DepartmentID=Department.DepartmentID;