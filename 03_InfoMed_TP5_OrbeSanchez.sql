UPDATE Pacientes p
JOIN (
    SELECT id_paciente
    FROM Pacientes
    WHERE nombre = 'Luciana GÃ³mez'
      AND calle = 'Avenida Las Heras'
      AND numero = '121'
      AND (
          LOWER(ciudad) LIKE '%buenos aires%'
          OR LOWER(ciudad) LIKE '%bs aires%'
          OR LOWER(ciudad) LIKE '%bs as%'
      )
) AS sub ON p.id_paciente = sub.id_paciente
SET p.calle = 'Corrientes',
    p.numero = '500';
SELECT * FROM Pacientes;
