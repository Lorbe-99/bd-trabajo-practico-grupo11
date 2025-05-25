SELECT
p.nombre,
    p.numero,
    p.calle,
    c.nombre_ciudad
FROM
Pacientes p
    LEFT JOIN Ciudades c ON p.id_ciudad = c.id_ciudad
WHERE p.id_ciudad = 1;
