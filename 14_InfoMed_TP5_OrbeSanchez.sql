SELECT
	mt.nombre AS Medicamento,
    COUNT(r.id_medicamento) AS VecesRecetada
FROM
	Medicamentos mt
    LEFT JOIN Recetas r ON r.id_medicamento = mt.id_medicamento
GROUP BY	
	mt.id_medicamento