SELECT TV.descrizione, COUNT(*) AS VerbaliPerViolazione
FROM VERBALE AS V
JOIN TIPO_VIOLAZIONE AS TV ON V.IDviolazione = TV.IDviolazione
GROUP BY TV.descrizione