create database BiblioredDB;

use bibliotecadb;

create table empleado (
id_empleado int auto_increment,
nombre varchar (20),
apellido_p varchar (20),
edad int,
departamento varchar (30),
cargo varchar (30),
sueldo float,
fecha_ingreso date,
primary key (id_empleado)
);

insert into empleado (nombre,apellido_p,edad,departamento,cargo,sueldo,fecha_ingreso)
values ('Mono','Nocturno','18','superheroes','avenger','200','2005-06-12')
,('Monicaco','nights','20','superheroes','avenger','200','2030-02-13'),
('Mareclino','panivino','30','superborracho','enologo prof','1000','2010-11-14'),
('Robert','Deniro','50','superactors','jefesito','45000','1987-05-30'),
('Loro','perickles','15','animalotes','loriador','0','2006-07-23'),
('obejita','pichow','6','animalitos','laneardor','50','2015-08-17'),
('Azukito','dulcineo','1','supersweet','perkin','20','2020-02-10'),
('valentina','luñas','6','bebesites','gerenta','2000','2015-07_03'),
('wear','wish','10','niñatwers','empleao','100','1980-04-25'),
('cerebro','rogers','30','animados','monito','500','1991-04-03'),
('Strudel','Flowers','21','visual','actris','12','2000-01-01'),
('Norman','Profiria','31','futbolistiques','mediocampista','120','1991-09-17'),
('Marcelo','cachureos','50','CultureFachi','songer','80','2002-03-25'),
('Pizza','nostra','10','golosines','producto','21','2013-04-16'),
('Marco','polo','25','chatarra','papitas','13','2002-12-09');

select * from empleado;

-- truncate empleado;

select departamento, cargo from empleado;

select * from empleado where cargo = 'avenger';

select * from empleado where cargo='avenger' and sueldo='200';

select * from empleado where cargo='avenger' or edad='25' or sueldo ='0';

select * from empleado where cargo in ('avenger','perkin','songer','papitas');

create table Libro (
id_libro int auto_increment,
nombre_libro varchar (30),
autor varchar(20),
editorial varchar(20),
edicion varchar(10),
año_publicacion date,
categoria varchar(20), 
ejemplares int,
primary key (id_libro)
);

insert into libro (nombre_libro,autor,editorial,edicion,año_publicacion,categoria,ejemplares)
values ('Hulk','Stan Lee','Marvel','1era','1985-01-01','Superheroes','1000'),
('SpiderMan','Stan Lee','Marvel','1era','1987-03-15','Superheroes','500'),
('Ladies&Gendermans','ShowTVMan','Presentations','3ra','2001-12-15','Television','500'),
('Como Ser Rico','Mc Dinero','ChilesMemes','1era','2018-06-14','Couching','100000'),
('Papelucho y el marciano','Mar-chela Gerra','La Calle','1era','2000-03-12','Calle','1'),
('Pulgarcito','NoSenaYo','Tampocose','Limitada','1995-01-19','Infantil','100'),
('Guia para hace pollo','Soa Inés','Centro de Madres','5ta','2005-04-24','Cotidians','500'),
('Biblia','diosito','iglesia','ultra','0000-00-00','fe','100000000'),
('Leo y Lea','Ambar','CasitaTatas','1era','2021-06-18','Peluches','40000'),
('Simelcon','Abraham','AbAmb','4ta','2020-01-01','Fantasia','1200'),
('Lara Kin','Perri','Perruna','2da','2021-05-11','Aventura','341'),
('Jinflex','Lea','Nicomise','2era','2021-03-15','Historia','40000'),
('Jinbai','Leoe','Nicomise','1era','1985-04-13','Mentiras','10000'),
('Dibujos','Abe','Dibujines','8va','1900-11-23','Educacion','1000'),
('Perritos Perdidos (niña y niño)','Amber','CasitaBB','1era','2021-01-31','Drama','1500');

select * from libro;

-- truncate libro;

select nombre_libro, editorial, año_publicacion from libro;

select * from libro where categoria = 'infantil';

select nombre_libro,autor from libro where categoria='fantasia' or categoria='aventura';

select * from libro where ejemplares='500' and editorial='Marvel';

select * from libro where autor in ('Stan Lee','Lea','Amber','Mc Dinero');


create table usuario (
id_usuario int auto_increment,
nombre_usuario varchar(20),
apellido_p_usuario varchar(20),
calle_dir varchar(20),
num_calle int,
fecha_ingreso date,
primary key(id_usuario)
);

alter table usuario add column comuna varchar(20);

insert into usuario (nombre_usuario, apellido_p_usuario, calle_dir, num_calle, fecha_ingreso,comuna)
values ('Camilo','Coimas','Los Leones','2341','2020-04-23','Providencia'),
('Romina','Sanchez','Av Pirinolas','736','2009-12-15','San Miguel'),
('Lucia','Marquez','Los Tilos','6523','2005-07-16','Maipu'),
('Lucioano','Curz Coca','Las Condell','888','2020-03-13','Las Condes'),
('Bryan','Perez','San Pablo','5423','2016-09-30','Pudahuel'),
('Rafaela','Pouls','Villenia','678','2019-02-18','San Miguel'),
('Phill','Collins','Av Chulin','4534','2015-11-02','Maipu'),
('Coral','Colonie','Av Providencia','2321','2010-08-12','Providencia'),
('Risalia','Stock','Piñeda','6429','2013-07-03','Cerrillos'),
('Christopher','Smith','Las Calilas','111','2010-10-15','Pedro Aguirre Cerda'),
('Miriam','Nawel','Wanabi','1213','2021-05-11','Pudahuel'),
('Cindy','Morales','Laguna Sur','8612','2000-04-29','Pudahuel'),
('Marcel','Labels','Switswers','021','2013-01-22','Tarapallá'),
('Max','Powel','Av Siempre Viva','0102','1985-02-14','Springfield'),
('Lusito','Comunica','Av Mexico','1236','2020-05-26','Mexicali');

select * from usuario;

select nombre_usuario, calle_dir, num_calle from usuario;

select * from usuario where comuna = 'San Miguel';

select fecha_ingreso,nombre_usuario, apellido_p_usuario from usuario where comuna='Maipu' or comuna='Pudahuel';

select * from usuario where comuna='Springfield' or comuna='Tarapallá' or calle_dir='Av Mexico';

select * from usuario where nombre_usuario in ('Lusito','Phill','Bryan','Christopher');
