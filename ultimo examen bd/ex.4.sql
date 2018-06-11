delimiter //
create trigger ex4 before insert on Clase for each row 
begin
declare condition1 condition for 1329;
declare exit HANDLER FOR condition1 BEGIN END;
if(new.capacidad<30)then
    insert into Clase values(new.Id_Clase,new.Nombre_Clase,new.Capacidad);
end if;
end//
/**Crea un disparador que impida añadir alguna nueva clase en la tabla Clase si no cumple que su Capacidad es mayor que 30. */