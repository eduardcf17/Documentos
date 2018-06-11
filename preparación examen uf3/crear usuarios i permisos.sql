/*Usuario que puede crear a un procedure i usuarlo*/
create user crearProcedure@'%' identified by 'crearProcedure';
grant create routine on prueba.* to crearProcedure@'%';
grant execute on prueba.* to crearProcedure@'%';
/*EL QUE LO EJECUTE TENDRA LOS PERMISOS DE ESTE ASI QUE SI NO LE DAS DE SELECT, insert NO IRA*/
grant select(Id_Concesionario,Ciudad_Concesionario) on prueba.Concesionario to crearProcedure@'%';
grant insert on prueba.Cliente to crearProcedure@'%';
/*Usuario que puede llamar a un procedure*/
create user usarProcedure@'%' identified by 'usar';
grant execute on prueba.* to usarProcedure@'%';