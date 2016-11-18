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
	[ModifiedDate] [datetime] NOT NULL,
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