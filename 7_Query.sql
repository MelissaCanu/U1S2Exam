SELECT 
    A.Cognome, 
    A.Nome, 
    SUM(V.Importo) AS ImportoTotale
FROM   
    ANAGRAFICA AS A
LEFT JOIN 
    VERBALE AS V ON A.IDAnagrafica = V.IDanagrafica
GROUP BY 
    A.Cognome, 
    A.Nome;