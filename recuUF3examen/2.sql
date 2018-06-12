use nba;
drop procedure eliminar();
delimiter //
create procedure eliminar(nombreID varchar(30))
begin
declare codigo int(11);
declare contador int;
set contador=(select count(nombre) from jugadores where nombre=nombreID);
if ( contador = 1) then
	set codigo=(select codigo from jugadores where nombre=nombreID and codigo not in(select jugador from estadisticas));
    if (codigo is null) then
		delete from jugadores where nombre=nombreID;
	else
         signal SQLSTATE '45000' set message_text="El codigo del jugador aparece en la tabla estadisticas";
	end if;
else
     signal SQLSTATE '45000' set message_text="Existe más de un jugador con ese nombre";
end if;
end//
delimiter ;