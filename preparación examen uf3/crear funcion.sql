use prueba;
delimiter //
create function numClient (Id_Concesionario tinyint unsigned) returns int unsigned
begin
	return (select count(*) from Cliente where Concesionario=Id_Concesionario);
end//
delimiter ;