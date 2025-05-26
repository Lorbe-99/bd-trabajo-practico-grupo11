SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Ciudades (
    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,
    nombre_ciudad VARCHAR(100)
);

INSERT INTO Ciudades (nombre_ciudad) VALUES
('Buenos Aires'),
('Córdoba'),
('Santa Fe'),
('Mendoza'),
('Rosario');

ALTER TABLE Pacientes 
ADD COLUMN id_ciudad INT;
ALTER TABLE Pacientes 
ADD CONSTRAINT fk_pacientes_ciudad
FOREIGN KEY (id_ciudad) REFERENCES Ciudades(id_ciudad);
    

UPDATE Pacientes p
JOIN (
    SELECT id_paciente
    FROM Pacientes
    WHERE LOWER(ciudad) IN ('buenos aires', 'bs aires', 'buenos aiers', 'buenos  aires', ' buenos aires')
) AS filtro ON p.id_paciente = filtro.id_paciente
JOIN Ciudades c ON c.nombre_ciudad = 'Buenos Aires'
SET p.id_ciudad = c.id_ciudad
WHERE p.id_paciente IS NOT NULL;

UPDATE Pacientes p
JOIN (
    SELECT id_paciente
    FROM Pacientes
    WHERE LOWER(ciudad) IN ('cordoba', 'córodba')
) AS filtro ON p.id_paciente = filtro.id_paciente
JOIN Ciudades c ON c.nombre_ciudad = 'Córdoba'
SET p.id_ciudad = c.id_ciudad
WHERE p.id_paciente IS NOT NULL;

UPDATE Pacientes p
JOIN (
    SELECT id_paciente
    FROM Pacientes
    WHERE LOWER(ciudad) IN ('mendoza', 'mendzoa')
) AS filtro ON p.id_paciente = filtro.id_paciente
JOIN Ciudades c ON c.nombre_ciudad = 'Mendoza'
SET p.id_ciudad = c.id_ciudad
WHERE p.id_paciente IS NOT NULL;

UPDATE Pacientes p
JOIN (
    SELECT id_paciente
    FROM Pacientes
    WHERE LOWER(ciudad) IN ('santa fe', 'rosario')
) AS filtro ON p.id_paciente = filtro.id_paciente
JOIN Ciudades c ON c.nombre_ciudad = 'Santa Fe'
SET p.id_ciudad = c.id_ciudad
WHERE p.id_paciente IS NOT NULL;

/*ALTER TABLE Pacientes DROP COLUMN ciudad;*/yy

SELECT 
p.*,
    c.nombre_ciudad
FROM 
Pacientes p
LEFT JOIN Ciudades c on p.id_ciudad = c.id_ciudad;

