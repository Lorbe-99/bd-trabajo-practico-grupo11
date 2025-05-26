SELECT
	mt.nombre AS Medicamento,
    COUNT(r.id_medicamento) AS CantVeces
FROM
	Recetas r
	LEFT JOIN Medicamentos mt ON r.id_medicamento = mt.id_medicamento
WHERE r.id_medico = 2 
GROUP BY mt.id_medicamento
HAVING COUNT(r.id_medicamento) > 1;