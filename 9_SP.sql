--Query parametrica che visualizzi 
--Data violazione, Importo e decurtamento punti 
--relativi ad una certa data

CREATE PROCEDURE DataImportoDecPuntiPerData
@DataViolazione DATE
AS
BEGIN
	SELECT
		DataViolazione,
		Importo,
		DecurtamentoPunti
	FROM
		VERBALE
		WHERE DataViolazione = @DataViolazione
END