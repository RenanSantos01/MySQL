-- 1
create database loja_virtual;
use loja_virtual;
-- 2

create table produtos(
id int auto_increment,
nome varchar(225),
descricao text,
preco decimal(10,2),
categoria varchar(50),
primary key(id)
);

-- 6
insert into produtos (nome, descricao, preco, categoria) values ("PCx", "execelente pra jogos, super potente, nível premium","5000","Eletronico");
insert into produtos (nome, descricao, preco, categoria) values ("PCy", "Bom pra jogos,potente, nível intermediario","2500","Eletronico");
insert into produtos (nome, descricao, preco, categoria) values ("PCz", "Não recomendado pra jogos, desempenho médio, nível básico","1500","Eletronico");
insert into produtos (nome, descricao, preco, categoria) values ("Sofá", "Confotável e possui grande espaço","2000","mobilia");
insert into produtos (nome, descricao, preco, categoria) values ("Sofá", "Confortável e possui tamanho médio","1900","mobilia");

-- 7
select * from produtos; -- comando utilizado para selecionar todos os produtos da tabela 

-- 8
select * from produtos where categoria = "Eletronico"; -- comando utilizado para selecionar todos os produtos da tabela da categoria Eletronico

-- 9 
select * from produtos order by nome asc; -- Comando para por tabela em ordem alfabetica 

-- 10 
select * from produtos order by preco desc limit 3;

-- 11
update produtos set preco = 59.99 where id = 2; -- comando utilizado para atualizar o valor do atributo da tabela 

-- 16
select avg (preco) as media_preco from produtos; -- comando "avg" utilizado para calcular a media, comando "as" utilizado para alterar o nome visível 

-- 17
select categoria, count(*) as categoria_produtos from produtos group by categoria;

-- 18
select nome, preco as maior_preco from produtos order by preco desc limit 1; 
select nome, preco as menor_preco from produtos order by preco asc limit 1;

-- 19 