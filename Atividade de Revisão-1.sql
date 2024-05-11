create database alunosenai;
use alunosenai;

-- 1 Insira um novo aluno na tabela de alunos com as seguintes informações: nome, idade, curso e matrícula.

create table alunos(
nome varchar(30) not null, 
nascimento date,
curso varchar(30),
matricula int(30) not null, 
primary key(matricula)
);

insert into alunos (nome, nascimento, curso, matricula) values 
('Renan', '2005-07-01','DS',455),
('Pedro', '2004-07-01','BI',467),
('Jv', '2003-07-01','BT',478);  

select nome, matricula, nascimento from alunos;  

-- 2
DELETE FROM alunos WHERE matricula = 478; -- comando utilizado para remover algo específico da tabela alunos "necessário PK"

-- 3

update alunos set nascimento = '2003-05-07' where matricula = 467;  -- comando utilizado para atualizar algo específico da tabela alunos

-- 4
commit; -- comando utilizado para tornar permanente as alterações realizadas em uma (transação): conjunto de operações executadas no banco de dados

-- 5
rollback; -- comando utilizado para desfazer alterações feitas em uma transação. obs: só pode ser utlizado se o commit não tiver sido utilizado

-- 6
select nome, matricula, nascimento,curso from alunos;  

-- 7

select * from alunos where nascimento > 2004-01-01;

-- 8
select nome, curso from alunos;

-- 9
select nome from alunos order by nome asc;

-- 10
select curso, count(*) as total_alunos from alunos group by curso;
