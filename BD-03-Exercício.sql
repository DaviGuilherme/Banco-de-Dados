create database Revista;
use Revista;
create table revista (
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);
insert into revista values (null,'Recreio',null),
					       (null,'Veja',null),
                           (null,'Caras',null),
						   (null,'Superinteressante',null);
select * from revista;
update revista set categoria = 'infantil'
					where idRevista in (1);
update revista set categoria = 'variedades'
					where idRevista in (2);
update revista set categoria = 'imprensa rosa'
					where idRevista in (3);
delete from revista where idRevista >= 5;
insert into revista values (null,'Isto é','notícia'),
					       (null,'Revista playstation','jogos'),
                           (null,'O Globo','Editora');
select * from revista;
desc revista;
alter table revista modify categoria varchar(40);
alter table revista modify nomeRevista varchar(40);
desc revista;
alter table revista change nome nomeRevista varchar(40);
select * from revista;
alter table revista add periodicidade varchar(40);
select * from revista;
alter table revista modify periodicidade varchar(40);
update revista set periodicidade = 'semanal'
					where idRevista in (1);
update revista set periodicidade = 'semanal'
					where idRevista in (2,4);
update revista set periodicidade = 'anuel'
					where idRevista in (3);
update revista set periodicidade = 'mensal'
					where idRevista in (8,9);
update revista set periodicidade = 'diario'
					where idRevista in (10);
select * from revista;
insert into revista values (null,'Revista Época','noticias','semanal');
select * from revista;
update revista set categoria = 'ciência'
					where idRevista in (4);
alter table revista drop periodicidade;
select * from revista;

create table Editora (
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date
);
insert into Editora values (1000,'Editora Joca','1900-06-03'),
						   (null,'Edirora Carlos','2000-07-02'),
                           (null,'Edirora Coriba','2001-07-02'),
                           (null,'Edirora Beriba','2010-07-02');
select * from Editora;