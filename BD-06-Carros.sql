create database Carro;
use Carro;

create table dono(
idDono int primary key auto_increment,
Dono varchar(40),
dataNascimento date,
salario varchar(40)
) auto_increment = 1;
select * from dono;


create table carros(
idCarro int primary key auto_increment,
modelo varchar(40),
marca varchar(40),
placa char(7),
anoFabri date,
fkDono int,
foreign key(fkDono) references dono(idDono)
) auto_increment = 101;
select * from carros;

insert into dono values (null,'Joeslei','2001-01-01','6000'),
						(null,'Bernardo','2008-09-07','8000'),
                        (null,'Alan','2010-10-20','5500'),
                        (null,'Clovis','2001-09-09','5000'),
                        (null,'Nelson','2002-05-03','3000');

update dono set salario = (6000) where idDono in (1);
update dono set salario = (8000) where idDono in (2);
update dono set salario = (5500) where idDono in (3);
update dono set salario = (5000) where idDono in (4);


alter table carros modify column anoFabri char(4);
insert into carros values (null,'Celta','Chevrolet','AAA1111',2000,1),
						  (null,'Corsa','Chevrolet','BBB2222',2002,1),
                          (null,'Strada','Fiat','CCC3333',2004,2),
                          (null,'Gol','Volkswagen','DDD4444',2000,3),
                          (null,'Camaro','Chevrolet','EEE5555',2007,4);

select * from carros;
select * from dono;
select * from carros order by anoFabri desc;
select * from carros where placa like '%4';
select * from carros where marca = 'Chevrolet';
desc carros;
alter table carros modify column modelo varchar (5000);
desc carros;
update dono set salario = 4000 where idDono = 5;
select * from dono;
select * from carros, dono where fkDono = idDono;
select * from carros, dono where fkDono = idDono and Dono = 'Joeslei';
select * from carros, dono where fkDono = idDono and marca = 'Fiat';
select * from carros, dono where fkDono = idDono and placa like 'E%';

drop table carros;
drop table dono;
