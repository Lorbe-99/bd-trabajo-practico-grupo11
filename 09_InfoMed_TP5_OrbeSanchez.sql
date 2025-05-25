SELECT 
COUNT(r.id_receta) AS Cant_Recetas,
    m.nombre AS MÃ©dico
FROM
Recetas r
    LEFT JOIN Medicos m ON r.id_medico = m.id_medico
GROUP BY m.nombre;
    
