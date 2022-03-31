create database Escola;
use Escola;

create table instituicao(
idInst int primary key,
nomeInst varchar(40)
);

insert into instituicao values (10,'Chiquinho'),
							   (11,'Eduardo Gomes'),
                               (12,'Cesar Donado');

create table Empresa(
idEmpresa int primary key,
nomeEmpresa varchar(40)
);

insert into Empresa values (20,'C6'),
						   (21,'Safra Bank'),
                           (22,'Alpe');

create table Aluno(
ra int primary key,
nomeAluno varchar(40),
fkEmpresa int,
fkInst int,
foreign key(fkEmpresa) references Empresa(idEmpresa),
foreign key(fkInst) references instituicao(idInst)
);

insert into Aluno values (1,'Ryan',20,10),
						 (2,'Davi',21,11),
                         (3,'Marcelo',22,12);
                         
select * from Aluno, instituicao where fkInst = idInst;
select * from Aluno, Empresa where fkEmpresa = idEmpresa;
select * from Aluno, instituicao, Empresa where fkEmpresa = idEmpresa and fkInst = idInst ;
						 