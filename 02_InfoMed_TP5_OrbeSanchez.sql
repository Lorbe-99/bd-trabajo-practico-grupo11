CREATE VIEW EdadesPacientes AS
SELECT
id_paciente,
    nombre,
fecha_nacimiento, 
TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) AS edad
FROM 
Pacientes;
SELECT * FROM EdadesPacientes
