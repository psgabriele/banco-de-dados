CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome_produto varchar(255),
    valor decimal(5,2),
    marca varchar(255),
    quantidade int,
    cor varchar(255),
    
    primary key (id)
);

select * from tb_produtos;

INSERT INTO tb_produtos(nome_produto, valor, marca, quantidade, cor) VALUES("Moletom", 230.90, "GAP", 7, "Rosa");

SELECT * from tb_produtos where valor > 500;
SELECT * from tb_produtos where valor < 500;

INSERT INTO tb_produtos(nome_produto, valor, marca, quantidade, cor) VALUES("Camisa", 10.50, "Nike", 10, "Preto");
INSERT INTO tb_produtos(nome_produto, valor, marca, quantidade, cor) VALUES("Calça", 120.70, "Adidas", 6, "Marrom");
INSERT INTO tb_produtos(nome_produto, valor, marca, quantidade, cor) VALUES("Mochila", 75.50, "Vans", 1, "Azul");
INSERT INTO tb_produtos(nome_produto, valor, marca, quantidade, cor) VALUES("Meias", 24.60, "Supremo", 4, "Amarelo");

SELECT * from tb_produtos;

UPDATE tb_produtos SET marca = "Gucci" where id = 5;

SELECT * from tb_produtos;