CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    tipo_alimento varchar(25),
    nome_alimento varchar(25),
    preco decimal(3,2),
    peso varchar(20),
    quantidade int,
    
    primary key (id)
);

SELECT * from tb_produtos;

INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Fruta", "Abacaxi", 6.99, "1,4 kg", 2);
INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Legume", "Batata", 4.99, "1,0 kg", 5);

ALTER TABLE tb_produtos
MODIFY preco decimal(5,2);

INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Legume", "Tomate", 11.98, "700 g", 4);
INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Fruta", "Banana", 2.39, "600 g", 4);
INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Fruta", "Limão", 1.50, "500 g", 3);
INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Legume", "Abóbora", 6.26, "1,1 kg", 1);
INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Legume", "Brócolis", 8.99, "670 g", 4);
INSERT INTO tb_produtos(tipo_alimento, nome_alimento, preco, peso, quantidade) VALUES("Fruta", "Manga", 2.49, "500 g", 3);

SELECT * from tb_produtos where tipo_alimento like "%fr%";

SELECT * from tb_produtos where tipo_alimento like "%le%";

UPDATE tb_produtos SET quantidade = 6 where id = 5;

SET sql_safe_updates = 0;

DELETE from tb_produtos where tipo_alimento = "Legume";

SELECT * from tb_produtos;

