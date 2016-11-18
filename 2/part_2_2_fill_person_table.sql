USE AdventureWorks2012;

INSERT INTO dbo.Person (BusinessEntityID,PersonType,NameStyle,Title,FirstName,MiddleName,LastName,Suffix,EmailPromotion,ModifiedDate)
SELECT TOP 1000 Person.BusinessEntityID, PersonType, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, EmailPromotion, Person.ModifiedDate FROM Person.Person;
--INNER JOIN Person.BusinessEntityContact 
--ON Person.BusinessEntityID=BusinessEntityContact.BusinessEntityID
--INNER JOIN Person.ContactType 
--ON Person.BusinessEntityContact.ContactTypeID=ContactType.ContactTypeID
--WHERE Name='Owner'; 
GO