SELECT
    SUM(case when p.id_sexo = 1 THEN 1 ELSE 0 END) AS Hombres,
    SUM(case when p.id_sexo = 2 THEN 1 ELSE 0 END) AS Mujeres,
    c.nombre_cuidad AS Cuidad
FROM
    Pacientes p
    LEFT JOIN Cuidades c ON p.id_cuidad = c.id_cuidad
    LEFT JOIN SexoBiologico s ON p.id_sexo = c.id_sexo
GROUP BY c.nombre_cuidad
