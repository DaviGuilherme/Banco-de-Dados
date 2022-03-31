create database sistema_gastos;
use sistema_gastos;

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar(40),
dataNascimento date,
profissao varchar(40),
idioma varchar(40),
idioma2 varchar(40)
) auto_increment = 101;
select * from pessoa;

create table gasto (
idGasto int primary key auto_increment,
dataGasto date,
valor int,
descricao varchar(40),
fkPessoa int,
foreign key (fkPessoa) references pessoa (idPessoa)
) auto_increment = 1;
select * from gasto;

alter table gasto modify valor int check( valor > 0);
desc gasto;


insert into pessoa values (null,'Julia Batista','2000-07-20','Pedreiro','Portugues','Espanhol'),
						  (null,'Carlos Faria','2001-08-22','Engenharia','Portugues','Inglês'),
                          (null,'Leonardo Teodoro','2004-07-20','Professor','Inglês','Espanhol'),
                          (null,'Clóvis de Barros','2005-07-20','Professor','Galego','Espanhol');

insert into gasto values (null,'2010-11-25',150.00,'conta-luz',101),
						 (null,'2010-11-25',200.00,'conta-água',101),
                         (null,'2020-05-14',50.00,'Gasolina',102),
                         (null,'2018-02-01',300.00,'Jogo',103),
                         (null,'2010-11-25',150.00,'Cinema',104),
                         (null,'2017-11-25',1000.00,'conta-luz',104);

select * from gasto;
select * from pessoa;
select * from pessoa where idioma2 = 'inglês';
select * from gasto order by dataGasto desc;
select * from gasto, pessoa  where fkPessoa = idPessoa;
select * from gasto, pessoa  where fkPessoa = idPessoa and nome = 'Clóvis de Barros';
select * from gasto, pessoa  where fkPessoa = idPessoa and dataGasto = '2020-05-14';
update gasto set valor = '2000.00' where idGasto = 3;
update gasto set valor = '5000.00' where idGasto = 4;
update gasto set valor = '17000.00' where idGasto = 2;
update gasto set valor = '800.00' where idGasto = 1;
update gasto set valor = '45.00' where idGasto = 5;
update gasto set valor = '17.00' where idGasto = 6;
select * from gasto;

delete from gasto where idGasto = 2;
select * from gasto;