Select
[LastName],
[More than One Of the same lastName] = Count(*)

from [AdventureWorks2019].[Person].Person

Group By [LastName] 

Having Count(*) > 1