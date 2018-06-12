/**Valor entero autoincremental y clave de la tabla
Fecha del momento de la inserción
create table ex3 (id int primary key auto_increment,fecha timestamp);**/


delimiter //
create trigger contar after insert on partidos for each row
begin
declare var int;
set var=var+1;
insert into ex3 values(default,default);
end//
	