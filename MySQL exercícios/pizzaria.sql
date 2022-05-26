CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(50) NOT NULL,
    tamanho varchar(50) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment,
    sabor varchar(50),
    preco decimal(5,2),
    borda_recheada boolean,
    acrescimo varchar(50),
    categoria_id bigint NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) references tb_categorias (id)
);

INSERT INTO tb_categorias(tipo, tamanho) VALUES("Salgada", "Pequena");
INSERT INTO tb_categorias(tipo, tamanho) VALUES("Salgada", "Média");
INSERT INTO tb_categorias(tipo, tamanho) VALUES("Salgada", "Grande");
INSERT INTO tb_categorias(tipo, tamanho) VALUES("Doce", "Pequena");
INSERT INTO tb_categorias(tipo, tamanho) VALUES("Doce", "Média");
INSERT INTO tb_categorias(tipo, tamanho) VALUES("Doce", "Grande");

INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Mangericão", 36.00, true, "Milho", 3); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Palmito", 29.00, false, "Sem acréscimo", 1); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Chocolate", 34.00, false, "Morango", 5); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Cogumelo", 29.00, true, "Tomate", 1); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Brócolis", 33.00, true, "Mangericão", 2); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Banana", 29.00, false, "Pasta de amendoim", 4); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Caponata", 36.00, false, "Rúcula", 3); 
INSERT INTO tb_pizzas(sabor, preco, borda_recheada, acrescimo, categoria_id) VALUES("Prestígio", 40.00, true, "Uva", 6); 

SELECT * from tb_pizzas where preco > 35;

SELECT * from tb_pizzas where preco > 25 and preco < 35;

SELECT * from tb_pizzas where sabor LIKE "%m%";

SELECT * from tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * from tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id where tipo = "Doce";