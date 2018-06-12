use nba;
delimiter //
create function numJUgadores (NombreEq varchar(20)) returns int unsigned
begin
	return (select count(*) from jugadores where Nombre_equipo=NombreEq);
end//
delimiter ;
select numJUgadores ("wizards");
