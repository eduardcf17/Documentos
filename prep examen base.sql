create database jardineria2;
create table CliBcn select * from jardineria.Clientes where ciudad='Barcelona';
ALTER TABLE CliBcn  DROP COLUMN Fax ;
ALTER TABLE CliBcn add primary key(CodigoCliente);
select nombrecliente,concat(select nombre,apellido1,apellido2 from Empleados where codigoempleadosrepventas=empleados.codigoempleado )from Clientes LEFT JOIN Pagos on CodigoCliente   ;