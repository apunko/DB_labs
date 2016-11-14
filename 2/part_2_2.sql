USE AdventureWorks2012;
/*SELECT * INTO dbo.Person FROM Person.Person WHERE 1=2;

ALTER TABLE dbo.Person
ADD CONSTRAINT PK_BEID_PersonType
PRIMARY KEY (BusinessEntityID,PersonType);

ALTER TABLE dbo.Person
ADD CONSTRAINT Check_PersonType
CHECK (PersonType IN ('GC','SP','EM','IN','VC','SC'));

ALTER TABLE dbo.Person
ADD CONSTRAINT Title_default
DEFAULT 'n/a' FOR Title;

INSERT INTO dbo.Person (BusinessEntityID,PersonType,NameStyle,Title,FirstName,MiddleName,LastName,Suffix,EmailPromotion,AdditionalContactInfo,Demographics,rowguid,ModifiedDate)
SELECT Person.BusinessEntityID, PersonType, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, EmailPromotion, AdditionalContactInfo, Demographics, Person.rowguid, Person.ModifiedDate FROM Person.Person
INNER JOIN Person.BusinessEntityContact 
ON Person.BusinessEntityID=BusinessEntityContact.BusinessEntityID
INNER JOIN Person.ContactType 
ON Person.BusinessEntityContact.ContactTypeID=ContactType.ContactTypeID
WHERE Name='Owner'; */

ALTER TABLE dbo.Person
ALTER COLUMN Title NVARCHAR(4) NOT NULL;