SELECT
	m.nombre AS Medico,
    p.nombre AS Paciente,
    COUNT(c.id_consulta) AS CantConsultas
FROM
	Consultas c
    LEFT JOIN Medicos m ON c.id_medico = m.id_medico
    LEFT JOIN Pacientes p ON c.id_paciente = p.id_paciente
GROUP BY
	m.id_medico, p.id_paciente;