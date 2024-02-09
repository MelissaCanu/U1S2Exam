CREATE PROCEDURE VisualizzaPuntiDecurtatiPerData
    @Data DATE
AS
BEGIN
    SELECT 
        A.Cognome,
        A.Nome,
        V.DataViolazione,
        V.DecurtamentoPunti
    FROM 
        ANAGRAFICA AS A
    JOIN 
        VERBALE AS V ON A.IDanagrafica = V.IDanagrafica
    WHERE 
        V.DataViolazione = @Data;
END;
