use biblioreddb;

-- tercera parte 23_06_2021

select * from libro where editorial not in ('marvel','centro de madres','nicomise');

select nombre_libro,editorial,ejemplares from libro where ejemplares>=100 and ejemplares<=1500;

select nombre, apellido_p,cargo,sueldo from empleado where sueldo>=50 and sueldo<=750;

select nombre, apellido_p, cargo, sueldo from empleado where sueldo between '50' and '750';

select nombre, apellido_p, cargo, departamento, edad from empleado where cargo not in ('avenger','enologo prof','perkin','gerenta');

select nombre from empleado order by nombre asc;

select nombre from empleado order by nombre desc;

select id_libro, nombre_libro, editorial from libro order by nombre_libro asc;

select id_libro, nombre_libro, editorial from libro order by nombre_libro desc;

select * from empleado order by cargo asc;
select * from empleado order by cargo desc;

select nombre, apellido_p,cargo, departamento from empleado order by departamento asc;
select nombre, apellido_p,cargo, departamento from empleado order by departamento desc;

select nombre, cargo, sueldo from empleado order by sueldo asc;
select nombre, cargo, sueldo from empleado order by sueldo desc;

select autor, nombre_libro, editorial from libro order by editorial asc;
select autor, nombre_libro, editorial from libro order by editorial desc;

select * from libro order by ejemplares asc;
select * from libro order by ejemplares desc;

select count(id_libro) as Cantidad_de_Libros from libro where nombre_libro like '%o%';
select count(id_libro) as Cantidad_de_Libros from libro where nombre_libro like '%o%';
select count(id_libro) as Cantidad_de_Libros from libro where año_publicacion between '2019-01-01' and '2021-12-31';

select max(sueldo) as MayorSueldo from empleado;
select min(sueldo) as MayorSueldo from empleado where sueldo not in ('0');

select sum(sueldo) as Suma_Sueldos from empleado;
select sum(sueldo)/count(id_empleado) as Promedio from empleado;

select avg(sueldo) as PrimedioAvg from empleado;