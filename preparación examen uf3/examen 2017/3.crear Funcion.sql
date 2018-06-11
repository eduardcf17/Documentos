/**Crea una función que, recibiendo como argumento el nombre de un departamento, devuelve
el sueldo medio de dicho departamento.**/
create function pregunta3(nombre varchar(30)) returns decimal
return (select avg(salario) from emple where dept_no=(select dept_no from depart where dnombre=nombre)); 
select pregunta3("CONTABILIDAD");
