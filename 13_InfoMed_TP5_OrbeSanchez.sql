SELECT
	p.nombre AS Nombre,
    COUNT(r.id_receta) AS CantRecetas
FROM
	Pacientes p
    LEFT JOIN Recetas r ON r.id_paciente = p.id_paciente
GROUP BY p.id_paciente;