WITH Totales AS (
    SELECT
        id_medicamento,
        COUNT(*) AS TotalRecetas
    FROM
        Recetas
    GROUP BY
        id_medicamento
)
SELECT
	mt.nombre,
    t.TotalRecetas,
    md.nombre,
    p.nombre
FROM
	Recetas r
	LEFT JOIN Medicamentos mt on r.id_medicamento = mt.id_medicamento
    LEFT JOIN Medicos md ON r.id_medico = md.id_medico
    LEFT JOIN Pacientes p ON r.id_paciente = p.id_paciente
    JOIN Totales t ON r.id_medicamento = t.id_medicamento
    
GROUP BY 
	t.id_medicamento, md.nombre, p.nombre
ORDER BY
    t.TotalRecetas DESC;
    