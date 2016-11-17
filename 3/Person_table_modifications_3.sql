USE AdventureWorks2012;

ALTER TABLE dbo.Person
ADD EmailAddress nvarchar(50);
GO

DECLARE @PersonsTableInstance TABLE
(
	[BusinessEntityID] [int] NOT NULL,
	[PersonType] [nchar](2) NOT NULL,
	[NameStyle] [dbo].[NameStyle] NOT NULL,
	[Title] [nvarchar](4) NULL,
	[FirstName] [dbo].[Name] NOT NULL,
	[MiddleName] [dbo].[Name] NULL,
	[LastName] [dbo].[Name] NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailPromotion] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EmailAddress] [nvarchar](50),
	PRIMARY KEY ([PersonType], [BusinessEntityID])
);

INSERT INTO @PersonsTableInstance
SELECT * FROM dbo.Person;

UPDATE PersonsTableQueryInstance
SET PersonsTableQueryInstance.EmailAddress = Person.EmailAddress.EmailAddress
FROM @PersonsTableInstance PersonsTableQueryInstance, Person.EmailAddress
WHERE PersonsTableQueryInstance.BusinessEntityID = Person.EmailAddress.BusinessEntityID;

UPDATE dbo.Person
SET dbo.Person.EmailAddress = REPLACE(PersonsTableQueryInstance.EmailAddress,'0','')
FROM @PersonsTableInstance PersonsTableQueryInstance
WHERE PersonsTableQueryInstance.BusinessEntityID = dbo.Person.BusinessEntityID;
GO

DELETE dbo.Person
FROM dbo.Person
INNER JOIN Person.PersonPhone
ON dbo.Person.BusinessEntityID=PersonPhone.BusinessEntityID
INNER JOIN Person.PhoneNumberType
ON PersonPhone.PhoneNumberTypeID=PhoneNumberType.PhoneNumberTypeID
WHERE PhoneNumberType.Name='Work';
GO

SELECT *
FROM AdventureWorks2012.INFORMATION_SCHEMA.CONSTRAINT_TABLE_USAGE
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Person';

ALTER TABLE dbo.Person
DROP COLUMN EmailAddress;
GO

ALTER TABLE dbo.Person
DROP CONSTRAINT PK_BEID_PersonType;

ALTER TABLE dbo.Person
DROP CONSTRAINT Check_PersonType;

ALTER TABLE dbo.Person
DROP CONSTRAINT Title_default;
GO

SELECT *
FROM AdventureWorks2012.INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME = 'Person';

DROP TABLE dbo.Person;

