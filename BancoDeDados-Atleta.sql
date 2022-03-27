create database atleta;
use atleta;
create table Atleta (
idAtleta int primary key, 
nome varchar (40), 
modalidade varchar (40),
qtdMedalha int );
select * from Atleta;
insert into Atleta values (01,'Davi','volei',9);
insert into Atleta values (02,'Luiza','boxe',2),
						  (03,'Nelson','boxe',5),
                          (04,'Pamela','pingpong',3),
                          (05,'Karla','pingpong',8),
                          (06,'Junior','volei',5),
                          (07,'Carlos','judo',4),
                          (08,'Pedro','judo',6);
update Atleta set qtdMedalha = '5' where idAtleta = 06;
update Atleta set qtdMedalha = '4' where idAtleta = 07;
update Atleta set qtdMedalha = '6' where idAtleta = 08;
update Atleta set qtdMedalha = '4' where idAtleta = 03;

select * from Atleta;
select nome, qtdMedalha from Atleta;
select modalidade, nome from Atleta;
select  * from Atleta where modalidade in ('boxe');
select * from Atleta where qtdMedalha >= 3;
select * from Atleta where idAtleta < 05;
select nome from Atleta where modalidade in ('volei');
select * from Atleta where idAtleta between 3 and 7 ;
select * from Atleta where idAtleta <> 3 and 7 ;
select * from Atleta order by modalidade;
select * from Atleta order by qtdMedalha desc;
select * from Atleta where nome like '_a%';
select * from Atleta where nome like 'P%';
select * from Atleta where nome like '%a';
select * from Atleta where nome like '%o_';
update Atleta set qtdMedalha = '0' where idAtleta = 06;
update Atleta set nome = 'Nelson Junior',
				  qtdMedalha = '35' where idAtleta = 06;
delete from Atleta where idAtleta = 08;
drop database atleta;


                          
						  





