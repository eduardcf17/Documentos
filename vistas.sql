vistas
1)	
CREATE VIEW EMPDEP as select *,(select dnombre from depart where depart.dept_no=emple.dept_no ) 'Departamento' from emple;
alter view EMPDEP as select emple.*,dnombre from emple join depart using (dept_no);
2)
CREATE VIEW PAR as select dnombre from depart WHERE dept_no%2=0;
3)
UPDATE EMPDEP SET comision=99 where apellido='Sanchez';
4)
LOS CAMBIA A TODOS )UPDATE EMPDEP SET DNOMBRE='VENTAS' WHERE apellido='Sanchez';
5)
insett into EMPDEP(emp_no,apellido,dnombre values() )


insert into dep_codigo_par values(13,'vistas','bcn');