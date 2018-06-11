use examen;
delimiter //
create procedure ex1 (DNI_var char(9),Nombre_var varchar(20),Apellido_var varchar(20),FechaNacimiento_var date)
begin
declare edad int;
declare nombreMayus varchar (20);
declare ApellidoMayus varchar (20);
set edad=TIMESTAMPDIFF(YEAR,FechaNacimiento_var,CURDATE());
set nombreMayus=concat((upper(SUBSTRING(Nombre_var,1,1))),substring(Nombre_var,2));
set ApellidoMayus=concat((upper(SUBSTRING(Apellido_var,1,1))),substring(Apellido_var,2));
if(edad>=18)then
	if(CHAR_LENGTH(DNI_var)=9)THEN
		INSERT INTO Alumno VALUES(DNI_var,nombreMayus,ApellidoMayus,FechaNacimiento_var,NULL);
    else
    select"El dni no tiene 9 caracteres";
	end if;
else
select"Menor de edad, no se puede inscribir";
end if;
end//
/**Los parámetros de entrada del procedimiento son: DNI del alumno, Nombre del alumno y Fecha de nacimiento del alumno.
El campo NumeroClase quedará  NULL.
Se ejecutará con los permisos del que invoca el procedimiento.
Comprobará que el alumno es mayor de edad (superior  a 18 años). En caso de no cumplirse este requisito mostrará un mensaje “Menor de edad, no se puede inscribir” y no realizará la inserción.
Comprobará también que el DNI del alumno consta únicamente de 9 caracteres. En caso de no cumplir esta condición, el procedimiento no insertará al nuevo alumno y emitirá un mensaje explicativo.
En caso de proceder a la inserción, el procedimiento siempre guardará el nombre del alumno con la primera letra tanto del nombre como de los apellidos, en mayúscula. El resto de letras quedarán en minúsculas.**/