*Criando e utilizando a tabela:

create database db_pizzaria_legal;
use db_pizzaria_legal


-----------------------------------------
**Criando a primeira tabela:

create table tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
preco decimal(2,2) not null,
primary key (id)
);


-----------------------------------------
***Criando a segunda tabela:

create table tb_pizza (
id bigint auto_increment,
nome varchar (30) not null,
tamanho varchar (20) not null,
borda_sabor varchar(20) not null,
borda boolean,
promocao boolean,
pizza_id bigint not null,

primary key (id),
foreign key (pizza_id) references tb_categoria (id)
);


-----------------------------
****Populando a primeira tabela:

insert into tb_categoria (tipo, preco)
values ("Salgada Brotinho", 25),
("Doce Brotinho", 29),
("Salgada Familia", 36),
("Doce Familia", 42),
("Salgada Super", 55)


-----------------------------
*****Populando a segunda tabela:

insert into tb_pizza (nome, borda, promocao, pizza_id, borda_sabor)
values ("Mussarela", true, false, 3, "Catupiry"),
("Mussarela", true, true, 1, "Cheddar"),
("Mussarela", true, false, 5, "Mussarela"),
("Mussarela", true, true, 1, "Cheddar"),
("Marguerita", true, false, 3, "Catupiry"),
("Prestigio", false, false, 4, "Nenhum"),
("Nutella", false, false, 2, "Nenhum"),
("Romeu e Julieta", false, false, 4, "Nenhum")


------------------------------------
******Select para visualizar a primeira tabela

select * from tb_categoria;


------------------------------------
*******Select para visualizar a segunda tabela

select * from tb_pizza;


------------------------------------
********Select para visualizar pizzas com valor MAIOR que 45 reais

select tb_pizza.nome, tb_categoria.tipo, tb_categoria.preco, tb_pizza.borda_sabor
from tb_pizza
       inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id
       where preco >= 45


-----------------------------------------------------------
*********Select para visualizar pizzas com valor ENTRE 29 E 60 reais

select tb_pizza.nome, tb_categoria.tipo, tb_categoria.preco, tb_pizza.borda_sabor
from tb_pizza
       inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id
       where preco >= 29
       and preco <= 60


-----------------------------------------------------------
**********Select para visualizar pizzas com borda que comece com a letra C

select tb_pizza.nome, tb_categoria.tipo, tb_categoria.preco, tb_pizza.borda_sabor
from tb_pizza
       inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id
       where borda_sabor like "%C%"


-----------------------------------------------------------
***********Select para visualizar pizzas da mesma categoria

select tb_pizza.nome, tb_categoria.tipo, tb_categoria.preco, tb_pizza.borda_sabor
from tb_pizza
       inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id
       where tipo = "Salgada Familia"



