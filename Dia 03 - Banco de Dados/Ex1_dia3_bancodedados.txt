*Criando e utilizando a tabela:

create database db_generation_game_online;
use db_generation_game_online;


-----------------------------------------
**Criando a primeira tabela:

create table tb_classe (
id bigint auto_increment,
tipo_poder varchar (30) not null,
ataque bigint(5) not null,
defesa bigint(5) not null,
primary key (id)
);

-----------------------------------------
***Criando a segunda tabela:

create table tb_personagem (
id bigint auto_increment,
nome varchar (30) not null,
genero varchar (30) not null,
nivel varchar (30) not null,
classificacao bigint(3) not null,
classe_id bigint not null,

primary key (id),
foreign key (classe_id) references tb_classe (id)
);


-----------------------------
****Populando a primeira tabela:

insert into tb_classe (tipo_poder, ataque, defesa)
values ("Teletransporte", 2600, 3000),
("Telecinese", 3300, 5000),
("Pirotecnia", 2600, 1700),
("Mediunidade", 7000, 2200),
("Campo de força", 1500, 7000)


------------------------------------
*****Select para visualizar a primeira tabela

select * from tb_classe;


------------------------------------
******Populando a segunda tabela:

insert into tb_personagem (nome, genero, nivel, classificacao, classe_id)
values ("Gaya", "Mutante", "Mestre", 99, 1),
("Noel", "Humano", "Platina", 34, 2),
("Siria", "Humano-mutante", "Ouro", 55, 3),
("Honnel", "Humano", "Diamante", 70, 5),
("Hyria", "Inumana", "Iniciante", 10, 3),
("Saishi", "Inumana", "Mestre", 80, 2),
("Kyra", "Extraterrestre", "Mestre", 92, 3)


------------------------------------
*******Select para visualizar a segunda tabela

select * from tb_personagem;


------------------------------------
********Select para visualizar personagens com ataque MAIOR que 2000

select tb_personagem.nome, tb_classe.tipo_poder, tb_classe.ataque, tb_classe.defesa
from tb_personagem
       inner join tb_classe on tb_classe.id = tb_personagem.classe_id
       where ataque > 2000


------------------------------------
*********Select para visualizar personagens com defesa ENTRE 1000 e 2000

select tb_personagem.nome, tb_classe.tipo_poder, tb_classe.ataque, tb_classe.defesa
from tb_personagem
       inner join tb_classe on tb_classe.id = tb_personagem.classe_id
       where defesa <= 2000
       and defesa >= 1000


---------------------------------------------------
**********Select para visualizar personagens com nome que comecem com a letra S

select tb_personagem.nome, tb_classe.tipo_poder, tb_classe.ataque, tb_classe.defesa
from tb_personagem
       inner join tb_classe on tb_classe.id = tb_personagem.classe_id
       where tb_personagem.nome like "%S%"


---------------------------------------------------
**********Select para visualizar personagens com mesmo tipo de poder

select tb_personagem.nome, tb_classe.tipo_poder, tb_classe.ataque, tb_classe.defesa
from tb_personagem
       inner join tb_classe on tb_classe.id = tb_personagem.classe_id
       where tipo_poder like "Pirotecnia"



