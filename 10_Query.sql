SELECT
Nominativo_Agente,
COUNT(*) AS NumViolazioniContestate
FROM
VERBALE
GROUP BY
Nominativo_Agente