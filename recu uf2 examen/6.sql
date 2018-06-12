select nombre,Nombre_equipo,
(sum(Puntos_por_partido)/(select count(*) from partidos)) 
from jugadores join estadisticas 
on codigo=jugador group by nombre,Nombre_equipo;