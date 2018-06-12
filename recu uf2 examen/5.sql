use nba;
update jugadores set nombre=lower(nombre) where
 Nombre_equipo=(select nombre from equipos where Ciudad="Washington");
 
select nombre from jugadores where Nombre_equipo="Wizards";