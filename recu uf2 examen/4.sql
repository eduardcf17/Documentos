select nombre_equipo,nombre,Asistencias_por_partido from jugadores join estadisticas on codigo=jugador 
order by Asistencias_por_partido desc limit 2;