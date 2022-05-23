CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(40),
    cpf bigint,
    salario decimal(10,2),
    funcao varchar(50),
    ativo boolean,
    
    primary key (id)
);

SELECT * from tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cpf, salario, funcao, ativo) VALUES("Marta",	12345678910, 5964.90, "Gerente", true);
INSERT INTO tb_colaboradores(nome, cpf, salario, funcao, ativo) VALUES("Rodrigo", 82745764981, 2875.99,	"Suporte técnico", true);
INSERT INTO tb_colaboradores(nome, cpf, salario, funcao, ativo) VALUES("Jorge", 22365587623, 3991.90, "Analista de TI", true);
INSERT INTO tb_colaboradores(nome, cpf, salario, funcao, ativo) VALUES("Lucrécia", 42245409352,	3991.90, "Analista de TI", true);
INSERT INTO tb_colaboradores(nome, cpf, salario, funcao, ativo) VALUES("Margareth", 52635685645, 3147.80, "Publicitária", true);
INSERT INTO tb_colaboradores(nome, cpf, salario, funcao, ativo) VALUES("Alberto", 29874545678, 1969.90, "Estagiário", true);

SELECT * from tb_colaboradores where salario > 2000;
SELECT * from tb_colaboradores where salario < 2000;

UPDATE tb_colaboradores SET funcao = "Estagiário de TI" where id = 6;

SELECT * from tb_colaboradores;
