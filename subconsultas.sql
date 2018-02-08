select apellido,(select dnombre from depart where emple.dept_no=depart.dept_no)from emple;
