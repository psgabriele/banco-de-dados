CREATE DATABASE db_brecho;

USE db_brecho;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome_produto varchar(100) not null,
    marca varchar(100) not null,
    tempo_de_uso varchar(100),
    cor varchar(100),
    valor decimal(6,2),
    
    primary key (id)
);

SELECT * from tb_produtos;

INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Camisa", "C&A", "1 mês", "Verde", 15.90);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Calça", "Calvin Klein", "2 anos", "Preto", 69.80);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Óculos", "Ray-Ban", "5 meses", "Vermelho", 194.90);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Tênis", "Adidas", "Não usado", "Branco e Rosa", 240.99);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Moletom", "GAP", "1 ano", "Azul", 85.40);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Pulseira", "Vivara", "6 meses", "Prata", 239.90);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Blusa", "Sem marca", "3 anos", "Amarelo", 10.99);
INSERT INTO tb_produtos(nome_produto, marca, tempo_de_uso, cor, valor) VALUES("Jaqueta", "Hering", "2 anos", "Azul claro", 120.00);

SELECT * from tb_produtos where valor > 50;

SELECT * from tb_produtos where valor < 50;

SELECT * from tb_produtos where id = 2;

UPDATE tb_produtos SET tempo_de_uso = "8 meses" where id = 1;

SET sql_safe_updates = 0;

DELETE from tb_produtos where id = 2;
DELETE from tb_produtos where id = 3;

SELECT * from tb_produtos;
