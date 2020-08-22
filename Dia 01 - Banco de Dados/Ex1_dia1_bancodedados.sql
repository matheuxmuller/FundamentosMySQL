***Criando o banco de dados: 

create database recursos_humanos;
-----------------------------------

***Utilizando o banco de dados:

use recursos_humanos;
-----------------------------------

Criando a tabela:

Create table funcionarios(
id bigint(5) auto_increment,
nome varchar(100) not null,
funcao varchar(50) not null,
salario bigint(10) not null,
setor varchar(30) not null,
situacao boolean,
primary key(id)
);
-----------------------------------

Populando a tabela:

insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Adler Silva", "Cozinheiro", 3000, "Atendimento", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Maria Silva", "Auxiliar de Limpeza", 3000, "Atendimento", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Tais Meira", "Publicitaria", 3000, "Marketing", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Luisa Sass", "UX//UI Designer", 6000, "TI", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Caio Craz", "Recrutador", 5000, "Recursos Humanos", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Matheus Muller Lima de Souza", "UX//UI Designer", 6000, "TI", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Gael Jonathan", "Estagiario de UI", 1750, "TI", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Nayara Lais", "Estagiaria de UX", 1750, "TI", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Heloisa Santos", "Gestora de Pessoas", 7500, "Recursos Humanos", false);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Laureane Santos", "Assistente Social", 3500, "Recursos Humanos", false);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Lara Souza", "Tech Lead", 10000, "TI", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Noah Lima", "Scrum Master", 10000, "TI", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Fabi Tavares", "Recepcionista", 2500, "Atendimento", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Maya Santos", "Contadora", 3500, "Financeiro", true);
insert into funcionarios (nome, funcao, salario, setor, situacao) Values ("Larissa Novais", "Advogada", 5000, "Compliance", true);

-----------------------------------------------

Select para os funcionários com o salário MAIOR do que 2000.

select * from funcionarios where salario >= 2000


-----------------------------------------------

Select para os funcionários com o salário MENOR do que 2000.

select * from funcionarios where salario <= 2000


-----------------------------------------------

Atualizar um dado da tabela através de uma query de atualização

update funcionarios set salario = 1800 where id = 4;
