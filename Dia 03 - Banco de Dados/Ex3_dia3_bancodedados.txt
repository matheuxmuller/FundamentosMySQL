*Criando e utilizando a tabela:

create database db_farmacia_do_bem;
use db_farmacia_do_bem;


-----------------------------------------
**Criando a primeira tabela:

create table tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
preco bigint(2) not null,
receita boolean,
primary key (id)
);


-----------------------------------------
***Criando a segunda tabela:

create table tb_produto (
id bigint auto_increment,
nome varchar (30) not null,
industria varchar (20) not null,
utilidade varchar (20) not null,
dosagem varchar(20) not null,
produto_id bigint not null,

primary key (id),
foreign key (produto_id) references tb_categoria (id)
);


-----------------------------
****Populando a primeira tabela:

insert into tb_categoria (tipo, preco, receita)
values ("Comprimido Comum", 15, false),
("Comprimido Controlado", 30, true),
("Injeção Intramuscular", 45, true),
("Ampola", 30, false),
("Solução", 30, false)


-----------------------------
*****Populando a segunda tabela:

insert into tb_produto (nome, industria, utilidade, dosagem, produto_id)
values ("Naridrin", "EMS", "Nariz Congestionado", "2x ao dia", 5),
("Rinosoro", "Mantecorp", "Nariz Congestionado", "2x ao dia", 5),
("Sorine", "Aché", "Nariz Congestionado", "2x ao dia", 5),
("Bezetacil", "Generico", "Corticóide", "1 unica vez", 3),
("Voltaren", "Generico", "Dor Localizada", "1 unica vez", 3),
("Decadron", "Generico", "Antiinflamatória", "1 unica vez", 3),
("Rivotril", "Roche", "Crises Epilépticas", "2x ao dia", 2),
("AAS", "EMS", "Dor de Cabeca", "2x ao dia", 1),
("Buscofem", "EMS", "Cólicas Menstruais", "2x ao dia", 1)


------------------------------------
******Select para visualizar a primeira tabela

select * from tb_categoria;


------------------------------------
*******Select para visualizar a segunda tabela

select * from tb_produto;


------------------------------------
********Select para visualizar produtos com valor MAIOR do que 45 reais

select tb_produto.nome, tb_categoria.tipo, tb_categoria.preco, tb_categoria.receita
from tb_produto
       inner join tb_categoria on tb_categoria.id = tb_produto.produto_id
       where preco >= 45


-----------------------------------------------------------
*********Select para visualizar produtos com valor ENTRE 3 e 60 reais

select tb_produto.nome, tb_categoria.tipo, tb_categoria.preco, tb_categoria.receita
from tb_produto
       inner join tb_categoria on tb_categoria.id = tb_produto.produto_id
       where preco >= 3
and preco <= 60


-----------------------------------------------------------
**********Select para visualizar produtos com nome que comece com a letra B

select tb_produto.nome, tb_categoria.tipo, tb_categoria.preco, tb_categoria.receita
from tb_produto
       inner join tb_categoria on tb_categoria.id = tb_produto.produto_id
       where nome like "%B%"


-----------------------------------------------------------
***********Select para visualizar produtos da mesma categoria

select tb_produto.nome, tb_categoria.tipo, tb_categoria.preco, tb_categoria.receita
from tb_produto
       inner join tb_categoria on tb_categoria.id = tb_produto.produto_id
       where tipo = "Injecao Intramuscular"


