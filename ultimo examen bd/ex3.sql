use examen;
drop function ex3;
delimiter //
create function ex3(Id_Clase_var tinyint(3))returns int
begin
declare numeroAlumnos int;
set numeroAlumnos=(select count(*) from Clase where (select NumeroClase from Alumno where Nombre_Clase=Id_Clase)=Id_Clase_var);
if(numeroAlumnos>0)then 
	return numeroAlumnos;
    else return 0;
end if;
end//
