Criando e utilizando o banco de dados:

create database ecommerce;
use ecommerce;

-----------------------------------------------------
Criando a tabela:

create table produtos(
id bigint(5) auto_increment,
produto varchar(100) not null,
marca varchar(50) not null,
preco bigint(10) not null,
tipo varchar(30) not null,
disponibilidade boolean,
primary key(id)
);

---------------------------------------------
Populando a tabela:

insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Maquina de Lavar", "Eletrolux", 3000, "Eletrodomesticos", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Maquina de Lavar", "Brastemp", 2500, "Eletrodomesticos", false);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Geladeira Duplex Frostfree", "Consul", 2300, "Eletrodomesticos", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Geladeira Frostfree", "Consul", 1600, "Eletrodomesticos", false);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Geladeira Duplex", "Consul", 1900, "Eletrodomesticos", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Iphone 11 Pro Max", "Apple", 6000, "Celulares", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Iphone 11 Pro", "Apple", 5000, "Celulares", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Iphone 11", "Apple", 4500, "Celulares", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Galaxy S9", "Samsung", 2500, "Celulares", false);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Galaxy S20", "Samsung", 3600, "Celulares", false);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Jogo de Panelas com 10 peças", "Tramontina", 300, "Utilidades", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Faqueiro com 42 peças em prata", "Tramontina", 499, "Utilidades", false);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Jogo de Cama, Mesa e Banho em Cetim Persa", "Vestcasa", 330, "Utilidades", true);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Enxoval de Quarto de Bebe Completo", "Vestcasa", 350, "Utilidades", false);
insert into produtos (produto, marca, preco, tipo, disponibilidade) Values ("Cama Box Queen", "Ortobom", 4000, "Utilidades", true);

 
-------------------------------------------------
Select para os produtos com o preço MAIOR do que 500:

select * from produtos where preco >= 500

-----------------------------------------------
Select para os produtos com o preço MENOR do que 500:

select * from produtos where preco <= 500


-----------------------------------------------
Atualizar um dado da tabela através de uma query de atualização:

update produtos set preco = 2600 where id = 14;
