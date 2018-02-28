create table JUGADOR (IDJugador int auto_increment primary key,
NombreJugador varchar(20) default 'algo' not null,
AliasJugador  varchar(20) unique,
FechaIncorporación  timestamp default current_timestamp,
Sueldo Decimal(7,2) DEFAULT '1000.00' not null,
PosicionesJugador SET('portero','defensa','medio','media punta','punta','lateral izquierdo','lateral derecho'),
TiempoJugado int);




select equipo_local,count(if(puntos_local>puntos_visitante,1,null))from partidos where temporada='06/07'group by equipo_local order by 2 desc;
select avg(puntos_por_partido) from estadisticas join jugadores on jugador=codigo where nombre='Pau Gasol';