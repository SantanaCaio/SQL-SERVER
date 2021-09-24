CREATE DATABASE escola;

use escola;

CREATE TABLE alunos(
aluno_ra int NOT NULL PRIMARY KEY IDENTITY,
aluno_nome varchar(50) NOT NULL,
aluno_email varchar(50)NOT NULL,
aluno_telefone varchar(30)NOT NULL
);

CREATE TABLE professores(
professor_id int NOT NULL PRIMARY KEY IDENTITY,
professores_nome varchar(30),
professor_email varchar(50),
professores_senha varchar(50) NOT NULL 
);

CREATE TABLE disciplinas (
diciplina_id int PRIMARY KEY,
disciplina_nome varchar(50),
disciplina_carga varchar(30),
fk_professor_id int FOREIGN KEY REFERENCES professores(professor_id)
);


CREATE TABLE matricula_aluno_disciplinas (
fk_aluno_ra int FOREIGN KEY REFERENCES alunos(aluno_ra),
fk_diciplina_id int FOREIGN KEY REFERENCES disciplinas(diciplina_id),
matricula_id INT PRIMARY KEY,
)

insert into alunos(aluno_nome, aluno_email, aluno_telefone) values (
'Caio Bezerra',
'caio@caio.com',
'11942200114'
);

insert into professores(professores_nome, professor_email, professores_senha) values (
'Prof caio',
'prof_caio@caio.com',
'12589654'
);

insert into disciplinas(diciplina_id, disciplina_nome, disciplina_carga, fk_professor_id) values (
'1',
'aulas de alguma coisa',
'40h',
1
);

insert into matricula_aluno_disciplinas (fk_aluno_ra, fk_diciplina_id, matricula_id) values (
'1',
'1',
'1'
);

select * from professores
select * from alunos
select * from disciplinas
select * from matricula_aluno_disciplinas
