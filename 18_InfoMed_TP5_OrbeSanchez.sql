SELECT
	md.nombre,
    COUNT(DISTINCT c.id_paciente) AS TotalPacientes
FROM
	Consultas c
    LEFT JOIN Medicos md ON c.id_medico = md.id_medico
    LEFT JOIN Pacientes p ON c.id_paciente = p.id_paciente
GROUP BY 
	c.id_medico