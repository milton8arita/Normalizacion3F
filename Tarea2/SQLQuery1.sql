Create database Tarea2;
Use Tarea2;

Create table Precios
(
id int primary key,
fecha datetime,
precio int,
combustible varchar(40),
pais varchar(30),
moneda varchar(10)
);

Create table Combustible
(
id int primary key,
descripcion varchar(30) 
);

Create table Monedas
(
id int primary key,
descripcion varchar(10)
);

Create table Pais
(
id int primary key,
descripcion varchar(30),
monedaid int foreign key references Monedas(id)
);

Create table Datos
(
id int primary key,
fecha datetime,
combustiblesid int foreign key references Combustible(id),
pais int foreign key references Pais(id),
valor int
);

insert into Precios values(1,'2023/01/30',105,'superior','honduras','lps');
insert into Precios values(2,'2023/01/30',95,'regular','honduras','lps');
insert into Precios values(3,'2023/01/30',120,'diesel','honduras','lps');

insert into Combustible values(1,'superior');
insert into Combustible values(2,'regular');
insert into Combustible values(3,'diesel');

insert into Monedas values(1,'dolar');
insert into Monedas values(2,'lempira');
insert into Monedas values(3,'colones');


insert into Pais values(1,'honduras',2);
insert into Pais values(2,'guatemala',3);
insert into Pais values(3,'usa',1);

insert into Datos values(1,'2023/01/30',1,1,105);
insert into Datos values(2,'2023/01/30',2,1,95);
insert into Datos values(3,'2023/01/30',3,1,120);


Create table Restaurantes
(
id int primary key,
nombre varchar(20)
);

Create table Platillos
(
id int primary key,
nombre varchar(30)
);

Create table PreciosPlatillos
(
id int primary key,
precio int
);

Create table RestauranteDatos
(
id int primary key,
nombre int foreign key references Restaurantes(id),
nombreP int foreign key references Platillos(id),
precios int foreign key references PreciosPlatillos(id)
);

insert into Restaurantes values(1,'Dennys');
insert into Restaurantes values(2,'pizza hut');

insert into Platillos values(1,'Hamburguesas');
insert into Platillos values(2,'Pollo');
insert into Platillos values(3,'Carne');
insert into Platillos values(4,'Pizza');
insert into Platillos values(5,'Pollo pizza');

insert into PreciosPlatillos values (1,150);
insert into PreciosPlatillos values (2,200);
insert into PreciosPlatillos values (3,300);
insert into PreciosPlatillos values (4,300);
insert into PreciosPlatillos values (5,100);

insert into RestauranteDatos values(1,1,1,1);
insert into RestauranteDatos values(2,1,2,2);
insert into RestauranteDatos values(3,1,3,3);
insert into RestauranteDatos values(4,2,4,4);
insert into RestauranteDatos values(5,2,5,5);


create table Peaje
(
nombre varchar(30),
fecha datetime,
vehiculo varchar(30),
tarifa int
);

create table Lugar
(
id int primary key,
descripcion varchar(30)
);

create table vehiculos
(
id int primary key,
tipo varchar(30)
);

create table tarifa
(
id int primary key,
tarifap int
);

create table PeajeDatos
(
id int primary key,
lugar int foreign key references lugar(id),
vehiculos int foreign key references vehiculos(id),
tarifa int foreign key references tarifa(id)
);

insert into Lugar values(1,'Zambrano');

insert into vehiculos values(1,'turismo');
insert into vehiculos values(2,'3 ejes');
insert into vehiculos values(3,'4 ejes');

insert into tarifa values (1,23);
insert into tarifa values (2,25);
insert into tarifa values (3,30);

insert into PeajeDatos values(1,1,1,1);
insert into PeajeDatos values(2,1,2,2);
insert into PeajeDatos values(3,1,3,3);

Create table ruta
(
id int primary key,
ruta varchar(30),
descripcion varchar(30)
);

create table precioRuta
(
id int primary key,
precios int
);

create table Transporte
(
id int primary key,
ruta int foreign key references ruta(id),
precios int foreign key references precioRuta(id)
);

insert into ruta values(1,'centro','salida');
insert into ruta values(2,'centro','satelite');
insert into ruta values(3,'centro','progreso');
insert into ruta values(4,'salida','satelite');
insert into ruta values(5,'salida','progreso');
insert into ruta values(6,'satelite','progreso');

insert into precioRuta values(1,10);
insert into precioRuta values(2,12);
insert into precioRuta values(3,25);
insert into precioRuta values(4,11);
insert into precioRuta values(5,20);
insert into precioRuta values(6,30);


insert into Transporte values(1,1,1);
insert into Transporte values(2,2,2);
insert into Transporte values(3,3,3);
insert into Transporte values(4,4,4);
insert into Transporte values(5,5,5);
insert into Transporte values(6,6,6);

