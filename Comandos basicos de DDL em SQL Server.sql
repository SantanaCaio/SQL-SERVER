--criando banco de dados
create database Filmes;

--Acessando banco de dado
use Filmes;

--Criando tabela
create table Generos
(
	idGenero int primary key identity,
	Nome varchar (200) not null
);
--Criando tabela
create table Filmes
(
	idFilmes int primary key identity,
	Nome varchar (255) not null,
	Sinopse varchar(255),
	idGenero int foreign key references Generos(idGenero)
);

--Comando de manipulação de dados DML
-- insert, alter e delete
insert into Generos (Nome) values('Ação');
insert into Generos (Nome) values('Ficção');
insert into Generos (Nome) values('Aventura');
insert into Generos (Nome) values('Comédia');

-- deletar registro de uma tabela
delete from Generos where idGenero > 0;

--Atualizar dados de uma tabela

update Generos SET Nome = 'Comédia/Drama' where idGenero = 19;

--Selecionar dados de uma tabela
SELECT idGenero, Nome from Generos;

