create table JUGADOR (IDJugador int auto_increment primary key,
NombreJugador varchar(20) default 'algo' not null,
AliasJugador  varchar(20) unique,
FechaIncorporación  timestamp default current_timestamp,
Sueldo Decimal(7,2) DEFAULT '1000.00' not null,
PosicionesJugador SET('portero','defensa','medio','media punta','punta','lateral izquierdo','lateral derecho'),
TiempoJugado int);




select equipo_local,count(if(puntos_local>puntos_visitante,1,null))from partidos where temporada='06/07'group by equipo_local order by 2 desc;
select avg(puntos_por_partido) from estadisticas join jugadores on jugador=codigo where nombre='Pau Gasol';
select avg(Asistencias_por_partido) from estadisticas join jugadores on jugador=codigo where nombre_equipo='Wizard';
select (select nombre from equipos where nombre=equipo_local),count(if(puntos_local>puntos_visitante,1,null)),(select nombre from equipos where nombre=equipo_visitante),count(if(puntos_visitante>puntos_local,1,null)) from partidos group by (select nombre from equipos);
select nombre_equipo,count(*)from jugadores group by nombre_equipo having nombre_equipo in (select nombre from equipos where division='Atlantic');
update jugadores set altura=substring_index(altura,'-',1)*0.3+substring_index(altura,'-',-1)*0.03;
alter table jugadores modify altura decilam(3,2);
delete from jugadores where codig not in (select jugador from estadisticas where tapoes_por_partido=0);