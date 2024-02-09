SELECT 
    A.Cognome, 
    A.Nome, 
    A.Indirizzo, 
    V.DataViolazione, 
    V.Importo, 
    V.DecurtamentoPunti
FROM 
    ANAGRAFICA AS A
LEFT JOIN 
    VERBALE AS V ON A.IDanagrafica = V.IDanagrafica
WHERE 
    V.Importo > 400.00;