SELECT 
[PERSONTYPE],
[TITLE],
[FIRSTNAME],
[LASTNAME]

FROM PERSON.Person

WHERE [FirstName] = 'Laura'
AND [LastName] = 'Norman'
AND [PersonType] IN('SP', 'EM', 'VC')