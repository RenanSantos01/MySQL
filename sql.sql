create database alunosenai;
use alunosenai;

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
DELETE FROM alunos WHERE matricula = 478;

-- 3

update alunos set nascimento = '2003-05-07' where matricula = 467; 

-- 4
commit;

-- 5
rollback;

-- 6
select nome, matricula, nascimento,curso from alunos;  

-- 7

select * from alunos where nascimento > 2004-01-01;

-- 8




