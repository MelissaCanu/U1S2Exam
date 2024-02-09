SELECT A.Cognome, A.Nome, SUM(V.DecurtamentoPunti) AS PuntiDecurtatiPerAnagrafe 
FROM VERBALE AS V
JOIN ANAGRAFICA AS A ON V.IDanagrafica = A.IDanagrafica
GROUP BY A.IDanagrafica, A.Cognome, A.Nome