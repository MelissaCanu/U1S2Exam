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
    V.DataViolazione BETWEEN '2009-2-1' AND '2009-7-31';
