/* Crea una tabla Estadisticas que tendrá tres campos: un identificador autoincremental, un
campo que llamarás Ciudad y que será un varchar de longitud máxima de 20 caracteres y
un campo numérico entero positivo cuyo valor oscilará entre 1 y 100.*/
use prueba;
create table Estadisticas (id int primary key auto_increment,Ciudad varchar(20),num int(100) unsigned);

/*En la tabla Estadisticas se almacenará para cada ciudad el número de concesionarios que
hay en ella. Así, por ejemplo, si en una fila tenemos los valores (45, “Roma”,7) significará
que en la ciudad de “Roma” hay 7 concesionarios.*/

/*A continuación diseña un disparador que por cada inserción en la tabla Concesionario
inserta o modifica la fila correspondiente en la tabla Estadisticas manteniendo de esta
manera, los valores actualizados.*/
delimiter //
create trigger estadistica after insert on Concesionario for each row
begin
declare var1 int;
set var1=(select count(*) from Estadisticas where ciudad=new.ciudad);
if var1=0 then
	insert into Estadisticas values(default,new.Ciudad_Concesionario,(select count(*) from Concesionario where ciudad=new.Ciudad_Concesionario));
else 
	update Estadisticas set num=(select count(*) from Concesionario where Ciudad_Concesionario=new.Ciudad_Concesionario);
end if;
end//