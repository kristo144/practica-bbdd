-- Aquesta vista no es actualitzable, ja que intervenen multiples taules base.
CREATE VIEW Funcionaris_pescadors AS
SELECT g.dni, g.nom, p.ciutat
FROM Funcionaris f
JOIN Persones g
ON f.dni = g.dni
JOIN Pescadors p
ON f.dni = p.dni
;
