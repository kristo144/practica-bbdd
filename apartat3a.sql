SELECT nss, nom, sou
FROM Funcionaris f
JOIN Persones p
ON f.dni = p.dni
WHERE f.dni NOT IN (
	SELECT dni FROM Pescadors
	UNION
	SELECT funcionari FROM Multes m
	JOIN Pescadors p ON m.infractor = p.dni
	WHERE p.comunitat = 'Catalunya'
)
;
