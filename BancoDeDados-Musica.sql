create database musica;
use musica;
create table Musica (
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);

alter table musica add fkAlbum int;
alter table musica add foreign key (fkAlbum) references Album(idAlbum);

select * from musica;
insert into musica values (1,'Nego Drama','Racionais','RAP'),
						  (2,'Diario de um Detento','Racionais','RAP'),
                          (3,'Mulher de Fases','Raimundos','Rock nacional'),
                          (4,'Flack Jack','Recayd Mob','Trap'),
                          (5,'All Star','Nando Reis','MPB'),
                          (6,'Teneborsa','Mc Livinho','Funk'),
                          (7,'Bonsai','supercombo','Rock nacional');
                          
		update musica set fkAlbum = 10 where idMusica = 1;
		update musica set fkAlbum = 11 where idMusica = 2;
		update musica set fkAlbum = 12 where idMusica = 3;
		update musica set fkAlbum = 13 where idMusica = 4;
		update musica set fkAlbum = 14 where idMusica = 5;
		update musica set fkAlbum = 15 where idMusica = 6;
		update musica set fkAlbum = 16 where idMusica = 7;
                          
create table Album(
idAlbum int primary key,
nome varchar(40),
gravadora varchar(40)
);

insert into Album values (10,'Album 1','Gravadora linda'),
						 (11,'Album 2','Gravadora feia'),
                         (12,'Album 3','Gravadora ok'),
                         (13,'Album 4','Gravadora linda'),
                         (14,'Album 5','Gravadora linda'),
                         (15,'Album 6','Gravadora linda'),
                         (16,'Album 7','Gravadora linda');
                         
                         update Album set nome = 'Album super bom' where idAlbum in (13,12,16);
                         
select * from musica, album where fkAlbum = idAlbum;
select * from musica, album where fkAlbum = idAlbum and fkAlbum = '13';
select * from musica, album where fkAlbum = idAlbum and gravadora = 'Gravadora linda';

select * from musica;
select titulo, artista from musica;
select genero, artista from musica;
select * from musica where genero in ('RAP');
select * from musica where artista in ('Nando Reis');
select titulo from musica where genero in ('RAP');
select titulo, genero from musica where artista in ('Raimundos');
select * from musica where idMusica between 4 and 7;
select * from musica where idMusica >= 3;
select * from musica where idMusica > 5;
select * from musica where idMusica <> 1 and 6;
select * from musica order by titulo;
select * from musica order by artista desc;
select * from musica where titulo like 'F%';
select * from musica where titulo like '%a';
select * from musica where genero like '_o%';
select * from musica where titulo like '%a_';
update musica set genero = 'Sertanejo' where idMusica = 4;
update musica set artista = 'Bruno e Marrone' where idMusica = 4;
delete from musica where idMusica = 3;
drop database musica;