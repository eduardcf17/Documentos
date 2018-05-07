create database jardineria2;
create table CliBcn select * from jardineria.Clientes where ciudad='Barcelona';
ALTER TABLE CliBcn  DROP COLUMN Fax ;
ALTER TABLE CliBcn add primary key(CodigoCliente);
select nombrecliente,concat(select nombre,apellido1,apellido2 from Empleados where codigoempleadosrepventas=empleados.codigoempleado )from Clientes LEFT JOIN Pagos on CodigoCliente   ;
SELECT nombrecliente,concat(nombre,' ',apellido1,' ',apellido2) FROM Clientes JOIN Empleados on codigoempleado=codigoempleadorepventas where CodigoCliente not in (select codigocliente from Pagos);
select nombrecliente,codigocliente,count(*),estado from Pedidos JOIN Clientes using(codigocliente) group by CodigoCliente,estado;
SELECT nombrecliente,codigocliente,count(*) from Pedidos JOIN Clientes using(codigocliente) where year (fechapedido)=2008 group by CodigoCliente having 2000<(select sum(cantidad*preciounidad) where codigopedido=Pedidos.codigopedido)
select sum(cantidad*preciounidad)from DetallePedidos group by codigoPedido

delete from Clientes where CodigoCliente not in(select CodigoCliente from pedido) 
set autocommit=0 para que no se guarden los cambios

update Pedidos set FechaEsperada=FechaEsperada+ interval 3 month;
	select date_format(fechapedido,'%d_%W_%M_%Y') from Pedidos order by 1 limit 1;
	set lc_time_names='es_Es' ;
INSERT INTO oficinas(ciudad) values ('Fuenlabrada')
