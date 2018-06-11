use Consultas_basicas;
delimiter //
create procedure insertar(emp_noID int(11) unsigned,var_apellido varchar(50),
var_oficio varchar(30),dirID int(11),
var_fecha date, var_salario int,
var_comision int,dept_noId int(11)unsigned)
begin
declare a,b,c int;
set a=(select 1 from emple where emp_no=emp_noID);
set b=(select count(*) from emple where dir=dirID);
set c=(select dept_no from depart where dept_no=dept_noId);

if(a=null)then
	if(b<4 and b>=1)then
		if c then
			insert into emple values (emp_noID, var_apellido, var_oficio, dirID,var_fecha, var_salario, var_comision, dept_noId);
		else 
			select"Depart mal";
		end if;
	else
		select "dir mal";
	end if;
else
	select"emp_no ya puesto";
end if;
end//
delimiter ;