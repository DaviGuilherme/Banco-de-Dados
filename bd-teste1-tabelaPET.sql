create database Pet;
use Pet;

create table Cliente(
idCliente int primary key auto_increment,
nomeCliente varchar(40),
telFixo char(10),
telCel char(11),
endereco varchar(40)
) auto_increment = 1;

create table Pet(
idPet int primary key auto_increment,
 especie varchar(40),
 nomePet varchar(40),
 raca varchar(40),
 peso decimal (4,2) check (peso > 0),
 fkCliente int,
 foreign key (fkCliente) references Cliente(idCliente)
 ) auto_increment = 101;
 
 
 
 insert into Cliente values (null,'Pedro',1125182666,11942449917,'av paulista'),
							(null,'Joca',1125182777,11942449916,'av aricanduva'),
                            (null,'Eleno',1125182888,11942449915,'av aricanduva'),
                            (null,'Guilherme',1125182999,11942449914,'Rua Maria Bonita'),
                            (null,'Luiza',1125182222,11942449913,'Rua Salada');
                            
insert into Pet values (null,'Cachorro','Rex','Dalmata','30.00',2),
					   (null,'Gato','Snoll','Spix','10.00',2),
                       (null,'Iguana','Leandra','Colorida','5.00',1),
                       (null,'Cachorro','Tico','Bulldog','40.00',3),
                       (null,'Dinossauro','Lulu','Tiranosauro-rex','30.00',4),
                       (null,'Tartaruga','Mario','Tigre-dgua','4.00',2);
                       
select * from Pet, Cliente where fkCliente = idCliente;
select * from Cliente;
select * from Pet;
alter table Cliente modify column nomeCliente varchar (100);
select * from pet where especie = 'Cachorro';
select nomePet, peso from pet;
select * from pet order by nomePet asc;
alter table cliente add bairro varchar(40);
update Cliente set bairro = ('Mooca') where idCliente in (5);
update Cliente set bairro = ('Lolorau') where idCliente in (2,3);
update Cliente set bairro = ('Limoeiro') where idCliente in (4);
update Cliente set bairro = ('Brigadeiro') where idCliente in (1);
select * from cliente order by bairro desc;
select * from pet where nomePet like 'R%';
select * from Cliente;
update Cliente set nomeCliente = 'Pedro Costa' where idCliente in (1);
update Cliente set nomeCliente = 'Joca Cunha' where idCliente in (2);
update Cliente set nomeCliente = 'Eleno Penha' where idCliente in (3);
update Cliente set nomeCliente = 'Guilherme Aparecido' where idCliente in (4);
update Cliente set nomeCliente = 'Luiza Souza' where idCliente in (5);
select * from cliente where nomeCliente like '%Souza';
update Cliente set telFixo = 1125282667 where idCliente = 3;
select * from cliente;
select * from pet, cliente where fkCliente = idCliente;
select * from pet, cliente where fkCliente = idCliente and nomeCliente = 'Pedro Costa';
select * from pet, cliente where fkCliente = idCliente and telCel = '11942449914';
delete from pet where idPet = 104;
select * from pet;

 drop table cliente;
 drop table pet;
 





