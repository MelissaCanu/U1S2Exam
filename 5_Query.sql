SELECT 
    A.Cognome, 
    A.Nome, 
    V.DataViolazione, 
    V.IndirizzoViolazione, 
    V.Importo, 
    V.DecurtamentoPunti
FROM 
    ANAGRAFICA AS A
LEFT JOIN 
    VERBALE AS V ON A.IDanagrafica = V.IDanagrafica
WHERE 
    A.Citta = 'Palermo';
