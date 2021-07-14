use biblioreddb;

-- Segunda parte 22_06_2021

select * from libro where autor not in ('Stan Lee','Soa Inés','diosito','perri');

select * from empleado where sueldo not in (500,2000,1000);

select * from usuario where fecha_ingreso between '2010-01-01' and '2019-01-01';

select * from empleado where sueldo between '300' and '10000';

select * from libro where año_publicacion between '2019-01-01' and '2021-12-31';

select * from empleado where nombre like 'p%';
select * from empleado where nombre like '%i%';
select * from empleado where nombre like '%a';
select * from empleado where apellido_p like '%o%';