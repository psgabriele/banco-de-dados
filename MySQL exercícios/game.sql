CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    classe varchar(50) NOT NULL,
    resistencia varchar(10) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id bigint auto_increment,
    nome varchar(50) NOT NULL,
    nivel int,
    poder_de_ataque bigint,
    poder_de_defesa bigint,
    classe_id bigint NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) references tb_classes (id)
);

INSERT INTO tb_classes(classe, resistencia) VALUES("Guerreiro(a)", "Alta");
INSERT INTO tb_classes(classe, resistencia) VALUES("Arqueiro(a)", "Baixa");
INSERT INTO tb_classes(classe, resistencia) VALUES("Xamã", "Média");
INSERT INTO tb_classes(classe, resistencia) VALUES("Curandeiro(a)", "Alta");
INSERT INTO tb_classes(classe, resistencia) VALUES("Feiticeiro(a)", "Baixa");

INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Cleitinho", 4, 6000, 2500, 3);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Vêkanandre", 2, 1000, 3700, 1);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Jorginho", 5, 10000, 1750, 2);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Alcapisco", 1, 500, 6250, 5);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Jurema", 12, 21000, 10000, 4);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Bartolomeu", 7, 1960, 9300, 1);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Carminha", 6, 15000, 790, 3);
INSERT INTO tb_personagens(nome, nivel, poder_de_ataque, poder_de_defesa, classe_id) VALUES("Jordânia", 9, 12000, 5000, 5);

SELECT * from tb_personagens where poder_de_ataque > 2000;

SELECT * from tb_personagens where poder_de_defesa > 1000 and poder_de_defesa < 2000;

SELECT * from tb_personagens where nome LIKE "%c%";

SELECT * from tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * from tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id where classe = "Xamã";
