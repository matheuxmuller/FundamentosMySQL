Criando e utilizando o banco de dados:

create database escola;
use escola;

-----------------------------------------------------
Criando a tabela:

create table alunos(
id bigint(5) auto_increment,
nome varchar(100) not null,
idade varchar(50) not null,
modalidade bigint(10) not null,
periodo varchar(30) not null,
matriculado boolean,
primary key(id)
);

-----------------------------------------------
Alterando nome e tipo da coluna:

alter table alunos change idade nota bigint(2);

-----------------------------------------------
Populando a tabela:

insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Heloisa", 7, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Luis", 9, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Mauro", 10, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Maisa", 0, "Ensino Médio", 2, false);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Sara", 2, "Ensino Médio", 2, false);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Ketlyn", 4, "Ensino Médio", 2, false);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Rita", 5, "Ensino Médio", 2, false);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Aya", 8, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Miguel", 9, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Thaina", 6, "Ensino Médio", 2, false);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Carol", 8, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Jose", 10, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Sophia", 9, "Ensino Médio", 2, true);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Simon", 5, "Ensino Médio", 2, false);
insert into alunos (nome, nota, modalidade, periodo, matriculado) Values ("Beth", 3, "Ensino Médio", 2, false);

-------------------------------------------------
Select para os alunos com o nota MAIOR do que 7:

select * from aluno where nota >= 7

-----------------------------------------------
Select para os alunos com o nota MENOR do que 7:

select * from aluno where nota <= 7


-----------------------------------------------
Atualizar um dado da tabela através de uma query de atualização:

update alunos set nota = 8 where id = 13;


