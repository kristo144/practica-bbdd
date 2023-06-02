SELECT z.num_zona, z.nom_massa, z.municipi, t.desc_tipus
FROM Zones z
JOIN Tipus_zona t
ON z.tipus = t.codi_tipus
JOIN Permisos p
ON  z.num_zona  = p.num_zona
AND z.nom_massa = p.nom_massa
JOIN Captures c
ON  z.num_zona  = c.num_zona
AND z.nom_massa = c.nom_massa
WHERE c.long_min < 20.00
GROUP BY z.num_zona, z.nom_massa
HAVING Count(p.data_vigencia) >= 3
;
