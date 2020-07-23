select tb_personagem.nome, tb_classe.tipo_poder, tb_classe.ataque, tb_classe.defesa
from tb_personagem
       inner join tb_classe on tb_classe.id = tb_personagem.classe_id
       where tipo_poder like "Pirotecnia"