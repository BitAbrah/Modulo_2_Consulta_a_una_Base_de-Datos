use biblioreddb;

-- Cuarta Prte 24_06_2021

select count(id_empleado) as Cargos,cargo from empleado group by cargo;

select count(id_empleado) as CantEmpleado, departamento  from empleado group by departamento;

select sum(sueldo) as GastoTotalSueldos from empleado;

select count(id_libro), editorial as CantLibros from libro group by editorial;

select sum(ejemplares) as EjemplaresTotales from libro;

