CREATE TABLE JUGADOR(
	IDjugador int auto_increment, 
	NombreJugador varchar() NOT NULL,
	AliasJugador unique charset latin1,
	FechaIncorporación date timestamp no update, 
	Sueldo decimal(2) not NULL,
    PosicionesJugador set(portero, defensa, medio,
media punta, punta, lateral izquierdo, lateral derecho.),
    TiempoJugado int,
	PRIMARY KEY (IDjugador))
)

select nombre,puntos_local from equipos join partidos using codigo where equipo_local=nombre order by 2;
2)select avg(puntos_por_partido) from estadisticas where jugador=(select codigo from jugadores where nombre='Pau Gasol') and temporada='06/07';
3)select avg(Asistencias_por_partido) from estadisticas join jugadores on jugador=codigo where Nombre_equipo='Wizards';
4)



1) select (equipo_local,count(if(puntos_local>puntos_visitante,1,null)) from partido group by equipo_local;
