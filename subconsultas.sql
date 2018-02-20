select apellido,(select dnombre from depart where emple.dept_no=depart.dept_no)from emple;
select avg(salario),(select dnombre from depart where emple.dept_no=depart.dept_no)from emple group by dept_no;
select count(emp_no),(select dnombre from depart where emple.dept_no=depart.dept_no) from emple where year (fecha_alt)='1991'  group by dept_no;
select oficio,salario from emple where emple.dept_no=(select depart.dept_no from depart where loc='Madrid');

