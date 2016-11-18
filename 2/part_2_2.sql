USE AdventureWorks2012;

CREATE TABLE [dbo].[Person](
	[BusinessEntityID] [int] NOT NULL,
	[PersonType] [nchar](2) NOT NULL,
	[NameStyle] [dbo].[NameStyle] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [dbo].[Name] NOT NULL,
	[MiddleName] [dbo].[Name] NULL,
	[LastName] [dbo].[Name] NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[EmailPromotion] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
);
GO

ALTER TABLE dbo.Person
ADD CONSTRAINT PK_BEID_PersonType
PRIMARY KEY (BusinessEntityID,PersonType);

ALTER TABLE dbo.Person
ADD CONSTRAINT Check_PersonType
CHECK (PersonType IN ('GC','SP','EM','IN','VC','SC'));

ALTER TABLE dbo.Person
ADD CONSTRAINT Title_default
DEFAULT 'n/a' FOR Title;
GO

INSERT INTO dbo.Person (BusinessEntityID,PersonType,NameStyle,Title,FirstName,MiddleName,LastName,Suffix,EmailPromotion,ModifiedDate)
SELECT TOP 1000 Person.BusinessEntityID, PersonType, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, EmailPromotion, Person.ModifiedDate FROM Person.Person;
--INNER JOIN Person.BusinessEntityContact 
--ON Person.BusinessEntityID=BusinessEntityContact.BusinessEntityID
--INNER JOIN Person.ContactType 
--ON Person.BusinessEntityContact.ContactTypeID=ContactType.ContactTypeID
--WHERE Name='Owner'; 
GO

ALTER TABLE dbo.Person
ALTER COLUMN Title NVARCHAR(4) NOT NULL;
GO