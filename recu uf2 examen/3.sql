select count(*) from partidos 
where (equipo_local or equipo_visitante)=(select nombre from equipos where ciudad="Detroit");