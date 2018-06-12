select count(*),(select Nombre_equipo from jugadores join estadisticas on codigo=jugador
 where temporada="00/01"  order by Tapones_por_partido desc limit 1 ) from partidos where temporada="00/01" 
and ((equipo_local or equipo_visitante)=
(select Nombre_equipo from jugadores join estadisticas on codigo=jugador
 where temporada="00/01"  order by Tapones_por_partido desc limit 1 ));