CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipoAlimento varchar(50),
    granel boolean,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nomeAlimento varchar(50),
    quantidade int,
    peso varchar(50),
    valor decimal(5,2),
    categoria_id bigint NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_categorias(tipoAlimento, granel) VALUES("Frutas", false);
INSERT INTO tb_categorias(tipoAlimento, granel) VALUES("Verduras", false);
INSERT INTO tb_categorias(tipoAlimento, granel) VALUES("Legumes", false);
INSERT INTO tb_categorias(tipoAlimento, granel) VALUES("Grãos", true);
INSERT INTO tb_categorias(tipoAlimento, granel) VALUES("Temperos", true);

INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Páprica", 3, "100 g", 10.90, 5);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Kiwi", 9, "720 g", 32.80, 1);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Arroz", 4, "4 kg", 64.99, 4);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Alface", 2, "250 g", 15.60, 2);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Batata", 35, "19 kg", 51.90, 3);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Ameixa", 7, "860 g", 22.30, 1);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Curry", 5, "1 kg", 79.80, 5);
INSERT INTO tb_produtos(nomeAlimento, quantidade, peso, valor, categoria_id) VALUES("Lentilha", 12, "6 kg", 94.80, 4);

SELECT * from tb_produtos where valor > 50;

SELECT * from tb_produtos where valor > 50 and valor < 150;

SELECT * from tb_produtos where nomeAlimento LIKE "%c%";

SELECT * from tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * from tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id where tipoAlimento = "Grãos";

