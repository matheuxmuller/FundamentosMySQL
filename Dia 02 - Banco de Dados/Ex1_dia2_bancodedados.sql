***Criando e utilizando a tabela:

create database db_RH2;
use db_RH2;


-----------------------------------

Criando a primeira tabela:

create table tb_cargo(
id bigint auto_increment,
cargo varchar(30) not null,
salario decimal (10,2) not null,
primary key (id)
);


-----------------------------
Populando a primeira tabela:

insert into tb_cargo (cargo, salario) values ("Desenvolvedor Junior", 4500.44);
insert into tb_cargo (cargo, salario) values ("Desenvolvedor Pleno", 6700.33);
insert into tb_cargo (cargo, salario) values ("Desenvolvedor Senior", 12200.22);
insert into tb_cargo (cargo, salario) values ("Tech Lead", 13000.00);
insert into tb_cargo (cargo, salario) values ("Scrum Master", 15000.00);
insert into tb_cargo (cargo, salario) values ("Recepcionista", 1999.99);
insert into tb_cargo (cargo, salario) values ("Auxiliar de Limpeza", 1499.99);
insert into tb_cargo (cargo, salario) values ("Cozinheiro", 3600.99);
insert into tb_cargo (cargo, salario) values ("Estagiário", 1200.99);


-----------------------------------

Criando a segunda tabela:

create table tb_funcionarios(
id bigint auto_increment,
idade bigint (2) not null,
nome varchar(30) not null,
formacao varchar(30) not null,
cargo_id bigint not null,

primary key (id),
foreign key (cargo_id) references tb_cargo(id)
);


---------------------------------------------
Adicionando uma nova coluna a tabela

alter table tb_funcionarios add admitido boolean;


-----------------------------
Populando a segunda tabela:

insert into tb_funcionario (nome, idade, formacao, cargo_id, admitido) values ("Raissa", 22, "Bootcamp Reprograma", 1, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Joahne", 32, "Bootcamp Laboratoria", 1, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Claudia", 22, "Superior em ADS", 9, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Kelly", 58, "Superior em Design Grafico", 3, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Maria", 28, "Mestrado em Engenharia", 5, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Jose", 26, "Bootcamp Generation", 1, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Yan", 18, "Superior em Moda", 6, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Yara", 44, "Bootcamp Reprograma", 4, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Carlos", 31, "Superior em Computacao", 2, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Zefinha", 50, "Ensino Medio Completo", 8, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Quinze", 44, "Ensino Funcamental Completo", 7, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Gina", 28, "Superior em Gastronomia", 8, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Cica", 40, "Superior em Publicidade", 9, true);
insert into tb_funcionarios (nome, idade, formacao, cargo_id, admitido) values ("Maya", 31, "Superior em Logistica", 9, true);


---------------------------------------------------------
Select para os funcionários com o salário MAIOR do que 2000.

select tb_funcionarios.nome, tb_cargo.cargo, tb_cargo.salario
from tb_funcionarios
       inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id;
       where salario >= 2000;


-------------------------------------------------------
Select para os funcionários com salário entre 1000 e 2000.

select tb_funcionarios.nome, tb_funcionarios.formacao, tb_cargo.cargo, tb_cargo.salario
from tb_funcionarios
       inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
       where salario <= 2000;
       and salario >= 1000;


-------------------------------------------------------
Select onde traga todos os funcionários de um cargo específico

select tb_funcionarios.nome, tb_funcionarios.formacao, tb_cargo.cargo
from tb_funcionarios
       inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
       where cargo = "Desenvolvedor Junior";

--------------------------------------------------------
Select utilizando like buscando os Funcionários com a letra C

select tb_funcionarios.nome, tb_funcionarios.formacao, tb_cargo.cargo 
from tb_funcionarios
       inner join tb_cargo on tb_cargo.id = tb_funcionarios.cargo_id
       where tb_funcionarios.nome like "%C%"
