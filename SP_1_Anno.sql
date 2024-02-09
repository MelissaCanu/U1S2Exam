-- Una SP parametrica che, ricevendo in input un anno, visualizzi 
--l’elenco delle contravvenzioni 
--effettuate in un quel determinato anno

CREATE PROCEDURE VisualizzaContravvenzioniPerAnno
    @Anno INT
AS
BEGIN
    SELECT 
        A.Cognome,
        A.Nome,
        V.DataViolazione,
        V.IndirizzoViolazione,
        V.Importo,
        V.DecurtamentoPunti
    FROM 
        ANAGRAFICA AS A
    JOIN 
        VERBALE AS V ON A.IDanagrafica = V.IDanagrafica
    WHERE 
        YEAR(V.DataViolazione) = @Anno; -- YEAR -> funzione per estrarre anno da data
END;
					
