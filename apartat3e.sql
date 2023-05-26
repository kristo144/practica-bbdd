SELECT DISTINCT e.nom_popular, e.nom_cientific, e.long_mitja
FROM Especies e
JOIN Habitats h
ON e.nom_popular = h.nom_especie
WHERE h.massa_aigua = 'Ara'
AND e.nom_popular NOT IN (
	SELECT e.nom_popular
	FROM Especies e
	JOIN Habitats h
	ON e.nom_popular = h.nom_especie
	WHERE h.massa_aigua <> 'Ara'
)
;
