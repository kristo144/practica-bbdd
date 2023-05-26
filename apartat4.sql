UPDATE Funcionaris
SET sou = sou * 1.05
WHERE dni IN (
	SELECT dni
	FROM Funcionaris f
	JOIN Assignacions a
	ON f.dni = a.funcionari
	GROUP BY dni
	HAVING COUNT(distinct num_zona, nom_massa) > 2
)
;
