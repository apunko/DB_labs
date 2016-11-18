USE AdventureWorks2012;
GO

--ALTER TABLE dbo.Person
--ADD TotalGroupSales MONEY;
--GO

--ALTER TABLE dbo.Person
--ADD SalesYTD MONEY;
--GO

--ALTER TABLE dbo.Person
--ADD RoundSales AS ROUND(SalesYTD,0);
--GO

--CREATE TABLE #Person 
--   (   
--	[BusinessEntityID] [int] NOT NULL,
--	[PersonType] [nchar](2) NOT NULL,
--	[NameStyle] bit NOT NULL,
--	[Title] [nvarchar](8) NULL,
--	[FirstName] [nvarchar](50) NOT NULL,
--	[MiddleName] [nvarchar](50) NULL,
--	[LastName] [nvarchar](50) NOT NULL,
--	[Suffix] [nvarchar](10) NULL,
--	[EmailPromotion] [int] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--   );
--GO

--ALTER TABLE #Person
--ADD PRIMARY KEY CLUSTERED (BusinessEntityID);
--GO


INSERT INTO #Person (BusinessEntityID,ModifiedDate)
SELECT BusinessEntityID,ModifiedDate 
FROM dbo.Person;
GO

--drop table #Person;