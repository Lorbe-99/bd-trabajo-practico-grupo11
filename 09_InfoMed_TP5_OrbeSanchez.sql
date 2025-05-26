SELECT 
	COUNT(r.id_receta) AS Cant_Recetas,
    m.nombre AS Médico
FROM
	Medicos m
    LEFT JOIN Recetas r ON r.id_medico = m.id_medico
GROUP BY m.nombre;
    