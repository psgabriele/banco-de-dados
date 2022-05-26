CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    nome_categoria varchar(255),
    setor varchar(255),
    
    primary key (id)
);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(9,2),
    quantidade int,
    marca varchar(255),
    categoria_id bigint NOT NULL,
    
    primary key (id),
    foreign key (categoria_id) references tb_categorias(id)
);

SELECT * from tb_categorias;
SELECT * from tb_produtos;

-- populando tabela de categorias
INSERT INTO tb_categorias(nome_categoria, setor) VALUES("Anti-inflamatório", "Medicamentos");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES("Suplementos", "Fitness");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES("Diurético", "Medicamentos");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES("Hidratante", "Dermocosméticos");
INSERT INTO tb_categorias(nome_categoria, setor) VALUES("Chocolate", "Alimentos");

-- populando tabela de produtos
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Paracetamol", 30.00, 10, "Genérico", 1);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Hidroclorotiazida", 24.00, 8, "EMS", 3);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Pomada de neném", 45.00, 2, "Bepantol", 4);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Bombom", 2.50, 4, "Lacta", 5);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Vitamina B12", 37.80, 3, "Nutrify", 2);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Hidratante labial", 18.60, 4, "Dove", 4);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Ibuprofeno", 55.23, 2, "Medley", 1);
INSERT INTO tb_produtos(nome, valor, quantidade, marca, categoria_id) VALUES("Barra de chocolate", 8.99, 15, "Garoto", 5);

SELECT * from tb_produtos where valor > 50;

SELECT * from tb_produtos where valor > 5 and valor < 60;

SELECT * from tb_produtos where nome LIKE "%c%";

SELECT * from tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * from tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id where setor = "Medicamentos";