USE AdventureWorks2012;
SELECT Employee.BusinessEntityID,JobTitle,Name as 'ShiftName'
FROM HumanResources.Employee
INNER JOIN HumanResources.EmployeeDepartmentHistory
ON Employee.BusinessEntityID=EmployeeDepartmentHistory.BusinessEntityID
INNER JOIN HumanResources.Shift
ON EmployeeDepartmentHistory.ShiftID=Shift.ShiftID
WHERE JobTitle='Stocker';