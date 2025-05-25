SELECT
count(r.id_receta) AS Cant_recetas,
    MONTH(r.fecha) AS MES,
    m.nombre AS MÃ©dico
FROM
Recetas r
LEFT JOIN Medicos m ON r.id_medico = m.id_medico
WHERE r.id_medico = 3 AND YEAR(r.fecha) = 2024 AND MONTH(r.fecha) = 08
GROUP BY MONTH(r.fecha);
