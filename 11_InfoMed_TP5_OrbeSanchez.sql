SELECT
	p.nombre,
    c.fecha,
    c.diagnostico
FROM
	Consultas c
    LEFT JOIN Pacientes p ON c.id_paciente = p.id_paciente
WHERE MONTH(c.fecha) = 08
    
    