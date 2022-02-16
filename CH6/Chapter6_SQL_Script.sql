--INSERT INTO dbo.TableSetA ([Fruit])
--values('Orange'),('Apple');

--INSERT INTO dbo.tablesetb ([Fruit])
--values('Orange'),('Apple'),('Plums'),('Almonds');

--select * from tablesetb

--UPDATE
--	dbo.tableseta
--SET [Fruit] = 'Oranges'
--WHERE
--	[Fruit] = 'Orange';

--select * from tableseta;

--select * from dbo.tablesetb

--UPDATE 
--	dbo.tablesetb
--SET [Fruit] = 'Plum'
--WHERE 
--	[Fruit] = 'Plums';

--UPDATE 
--	dbo.tablesetb
--SET [Fruit] = 'Almond'
--WHERE 
--	[Fruit] = 'Almonds';

--ALTER DATABASE [CH6_Database] MODIFY NAME = CH_6_Database;

--USE MASTER;

--ALTER DATABASE [CH_6_Database] MODIFY NAME = Chapter_6_Database;

--use Chapter_6_Database;
--CREATE A IDENTITY KEY FOR SEEDING (1,5) START WITH 1 AND INCREMENT BY 5

--ALTER TABLE [dbo].tableseta
--ADD sid_A_Key int IDENTITY(1,5);

--ALTER TABLE [dbo].[tablesetb]
--ADD sid_B_Key int IDENTITY(10,10);

--ALTER TABLE [dbo].tableseta
--	ALTER Column [Fruit] char(8);

ALTER TABLE [dbo].tablesetb
	ALTER Column [Fruit] char(8);

--UNION OPERATOR WILL REMOVE DUPLICATES..MUST HAVE SAME NUMBER OF COLUMN DEFINITIONS
--Select Fruit from [dbo].TableSetA
--UNION
--Select Fruit from [dbo].TableSetB;
----union all includes all duplicates
--Select Fruit from [dbo].TableSetA
--UNION all
--Select Fruit from [dbo].TableSetB;

--INTERSECT RETURNS ALL DISTINCT VALUES


























