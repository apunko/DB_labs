USE AdventureWorks2012;
SELECT Name, Min(StartDate)
FROM HumanResources.Department
INNER JOIN HumanResources.EmployeeDepartmentHistory
ON Department.DepartmentID=EmployeeDepartmentHistory.DepartmentID
GROUP BY Name;