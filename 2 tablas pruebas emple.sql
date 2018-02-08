select emple.apellido, dnombre from emple, depart where depart.dept_no=emple.dept_no;
select emple.apellido, dnombre from emple, depart where depart.dept_no=emple.dept_no AND depart.loc='sevilla';
select depart.dnombre,avg(emple.salario) from emple, depart where depart.dept_no=emple.dept_no group by depart.dnombre;
el departamento que mas gana
select depart.dnombre,sum(emple.salario) from emple, depart where depart.dept_no=emple.dept_no group by depart.dnombre order by 2 desc limit 1;

select depart.loc, count(emple.oficio) from emple, depart  where depart.dept_no=emple.dept_no AND emple.oficio='vendedor' group by 1;
select depart.loc, count(emple.oficio) from emple, depart  where depart.dept_no=emple.dept_no AND emple.oficio='vendedor' group by 1;
select depart.dnombre, group_concat(emple.fecha_alt, separator'##') from emple, depart where depart.dept_no=emple.dept_no group by 1;

select j.apellido jefe, j.emp_no,e.apellido empleado,e.dir from emple e, emple j where e.dir=j.emp_no;